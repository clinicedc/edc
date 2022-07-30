
.. contents:: Contents
   :depth: 2
   :backlinks: top

Backup using Duplicity
----------------------

**IMPORTANT**

  If using duplicity BE ABSOLUTELY SURE you backup the ``gnupg`` keys.

  Best to backup the entire ``~/.gnupg`` folder.

  Backup the ``~/.duplicity`` folder as well.


Config mysql to backup and transfer with Duplicity
++++++++++++++++++++++++++++++++++++++++++++++++++

Install ``Duplicity``

.. code-block:: bash

  $ sudo apt-get update

  $ sudo apt-get install duplicity haveged python-boto

Create a backup account ``edc``

.. code-block:: bash

  $ adduser edc

Switch to the ``edc`` account.

.. code-block:: bash

  $ mkdir ~/mysql_backup/

  $ nano ~/.my.cnf

Paste

.. code-block:: bash

  [client]
  USER=edc
  PASS=some_password

Setup ``Duplicity``

.. code-block:: bash

  $ mkdir ~/.duplicity

*or restore the ``.duplicity`` folder from your archive.*

Either generate GPG Keys OR restore the .gnugp folder from you backup

generate ...

.. code-block:: bash

  $ gpg --version

  $ gpg --gen-key

*or copy your archived .gnupg folder into the account.*

Take note of ``your-GPG-public-key-id``

.. code-block:: bash

  $ mkdir ~/.duplicity

  $ nano ~/.duplicity/.env_variables.conf

Paste the following into ``.env_variables.conf`` filling in your values:

.. code-block:: bash

  export AWS_ACCESS_KEY_ID="your-access-key"
  export AWS_SECRET_ACCESS_KEY="your-secret-key"
  export AWS_ENDPOINT="s3://endpoint-name//"
  export AWS_BUCKET="path/to/folder/"
  export GPG_KEY="your-GPG-public-key-id"
  export PASSPHRASE="your-GPG-key-passphrase"
  export DB_NAME=ambition_production
  export DB_DATE=$(date +%Y%m%d%H%M%S)
  export DB_FILE=$DB_NAME-$DB_DATE.sql
  export BACKUP_DIR=/home/edc/mysql_backup/

.. code-block:: bash

  $ chmod 0600 ~/.duplicity/.env_variables.conf

  $ source ~/.duplicity/.env_variables.conf

  $ nano ~/.duplicity/.backup.sh

.. code-block:: bash

  #!/bin/bash

  . "$HOME/.duplicity/.env_variables.conf"

  cd $BACKUP_DIR \
    && mysqldump $DB_NAME -r $DB_FILE \
    && duplicity \
      --verbosity info \
      --encrypt-sign-key=$GPG_KEY \
      --full-if-older-than 7D \
      --log-file $HOME/.duplicity/info.log \
        $BACKUP_DIR $AWS_ENDPOINT/$AWS_BUCKET

  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_ENDPOINT
  unset AWS_BUCKET
  unset GPG_KEY
  unset PASSPHRASE
  unset DB_NAME
  unset DB_DATE
  unset DB_FILE
  unset BACKUP_DIR


.. code-block:: bash

  $ chmod 0700 ~/.duplicity/.backup.sh

A restore file may look like this:

.. code-block:: bash

  . "$HOME/.duplicity/.env_variables.conf"

  # note will fail if backup folder exists
  duplicity --verbosity info \
   --encrypt-sign-key=$GPG_KEY \
   --log-file $HOME/.duplicity/info.log \
   $AWS_ENDPOINT/$AWS_BUCKET \
   $BACKUP_DIR

  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_ENDPOINT
  unset AWS_BUCKET
  unset GPG_KEY
  unset PASSPHRASE
  unset DB_NAME
  unset DB_DATE
  unset DB_FILE
  unset BACKUP_DIR

.. code-block:: bash

  $ chmod 0700 ~/.duplicity/.restore.sh


check timestamp on last record in admin log, for example::

  select * from django_admin_log order by action_time desc LIMIT 1\G;


Restore single file
+++++++++++++++++++

create a ``restore_file.sh``::

  nano restore_file.sh

.. code-block:: bash

  . "$HOME/.duplicity/.env_variables.conf"

  # note will fail if file exists
  duplicity --verbosity info \
   --encrypt-sign-key=$GPG_KEY \
   --log-file $HOME/.duplicity/info.log \
   --file-to-restore $FILE_TO_RESTORE \
   $AWS_ENDPOINT/$AWS_BUCKET \
   $HOME/$FILE_TO_RESTORE

  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_ENDPOINT
  unset AWS_BUCKET
  unset GPG_KEY
  unset PASSPHRASE
  unset DB_NAME
  unset DB_DATE
  unset DB_FILE
  unset BACKUP_DIR
  unset FILE_TO_RESTORE


list files in the backup::

  source "$HOME/.duplicity/.env_variables.conf"

  duplicity list-current-files $AWS_ENDPOINT/$AWS_BUCKET

for file ``ambition_production-20180806160001.sql``::

set $FILE_TO_RESTORE::

  export FILE_TO_RESTORE=ambition_production-20180806160001.sql

restore::

  sudo sh restore_file.sh

References
++++++++++

* https://www.digitalocean.com/community/tutorials/how-to-use-duplicity-with-gpg-to-back-up-data-to-digitalocean-spaces
* https://help.ubuntu.com/community/DuplicityBackupHowto#List_Archived_Files
* Renew a gpg key: https://gist.github.com/krisleech/760213ed287ea9da85521c7c9aac1df0

