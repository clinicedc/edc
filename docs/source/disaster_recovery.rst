Disaster recovery procedures
============================

Prepare (in advance)
--------------------

**IMPORTANT**

  It's **ESSENTIAL** that these `Prepare (in advance)`_ steps are completed **NOW**.

  Once a disaster has occurred (e.g. the database server has failed/become
  permanently unavailable, the GPG keys required to decrypt the backups will be
  lost forever (as will the contents of the backups!)

This guide assumes the steps in the `backup guide`_ have been followed.

.. _backup guide: backup.rst


Export-backup-import GPG keys
-----------------------------

On database server configured with backups::

  su edc

  # List installed GPG keys and their IDs
  gpg --list-secret-keys --keyid-format=long

  # Export key
  gpg --output $HOME/dup.gpg.pub --armor --export <key_id>
  gpg --output $HOME/dup.gpg.priv --armor --pinentry-mode=loopback --export-secret-keys <key_id>

  # See: https://hashnode.com/@adityaprakash2811
  #    & https://techblog.geekyants.com/a-guide-to-duplicity-part-2
  #    & https://makandracards.com/makandra-orga/37763-gpg-extract-private-key-and-import-on-different-machine


Copy keys to local (disaster recovery) instance, and import

.. code-block:: bash

  mkdir -p ${HOME}/duplicity_gpg
  rsync -chavzP --stats --include 'dup.gpg.p*' --exclude '*' edc@source.host:~/ ${HOME}/duplicity_gpg/

  # Import private key (Ubuntu)
  gpg --pinentry-mode=loopback --import ${HOME}/duplicity_gpg/dup.gpg.priv

  # Import private key (Mac)
  gpg --import ${HOME}/duplicity_gpg/dup.gpg.priv

Remove exported keys on original database server

.. code-block:: bash

  su edc
  rm ${HOME}/dup.gpg.p{ub,riv}


Backup the backup config
------------------------

On local (disaster recovery) instance, copy backup config from database server
that has been configured with backups

.. code-block:: bash

  mkdir -p ${HOME}/.duplicity
  rsync -chavzP --stats edc@source.host:~/.duplicity/ ${HOME}/.duplicity/


Configure disaster recovery target
++++++++++++++++++++++++++++++++++

This will be the machine you restore to.

**IMPORTANT**

  It's worth doing these steps in advance too, to ensure they work!


Import GPG keys
---------------

If you haven't already, import the duplicity GPG private key on the machine to restore to

.. code-block:: bash

  # Import private key (Ubuntu)
  gpg --pinentry-mode=loopback --import /path/to/dup.gpg.priv

  # Import private key (Mac)
  gpg --import /path/to/dup.gpg.priv


Install duplicity
-----------------

On Ubuntu

.. code-block:: bash

  sudo apt-get update
  sudo apt-get install duplicity haveged python3-boto


On a Mac

.. code-block:: bash

  # Requires older version of duplicity (0.8.17), else gives error when running.
  # See: https://github.com/mail-in-a-box/mailinabox/issues/1941#issuecomment-1135969356
  #    & https://discourse.mailinabox.email/t/cannot-backup-since-duplicity-update/9119
  #
  # Requires older version of Python (3.10), else gives error installing
  # specific version of duplicity.
  $ env_name=edc-db-restore && \
      conda create --yes --name=${env_name} python=3.10 \
      && conda activate ${env_name} \
      && pip install duplicity==0.8.17 boto


Review existing backups
-----------------------

Ensure you can perform the following steps to verify connectivity between
duplicity and the remote/cloud backup space.

The following steps assumes checking the status of backups for database,
Ambition, defined in ``.env_variables.conf``

.. code-block:: bash

  . "$HOME/.duplicity/.env_variables.conf"

  # Basic check to see details of remote duplicity backups for database, Ambition
  duplicity collection-status $AWS_ENDPOINT/$AWS_BUCKET_AMBITION

  # List files available to restore from most recent backup
  # (ensures we can decrypt - requires gpg keys to have been imported)
  duplicity list-current-files $AWS_ENDPOINT/$AWS_BUCKET_AMBITION

  # List files available to restore from backup on or before specified --time
  duplicity list-current-files --time=2023-07-27 $AWS_ENDPOINT/$AWS_BUCKET_AMBITION

  . "$HOME/.duplicity/.unset_env_variables.conf"


Recover
-------

**IMPORTANT**

  Again, it's worth doing these steps in advance too, to ensure they work!

All steps assume restoring a backup of database, Ambition, defined in
``.env_variables.conf``

Restore MySQL dump from cloud/remote using duplicity
----------------------------------------------------

Restore file from latest backup
+++++++++++++++++++++++++++++++

To restore MySQL dump from most recent duplicity backup:

.. code-block:: bash

  cd ${HOME}/.duplicity

  # Load defined env variables
  source .env_variables.conf

  # Increase max files that can be opened
  ulimit -n 1024

  # Define file to restore
  export FILE_TO_RESTORE=ambition_production-20230731160001.sql

  # Restore $FILE_TO_RESTORE
  #    from most recent backup
  #    from $AWS_ENDPOINT/$AWS_BUCKET_AMBITION
  #      to $HOME/$FILE_TO_RESTORE
  # (note will fail if file exists)
  duplicity --verbosity info \
    --encrypt-sign-key=$GPG_KEY \
    --log-file $HOME/.duplicity/duplicity_restore.log \
    --file-to-restore $FILE_TO_RESTORE \
    $AWS_ENDPOINT/$AWS_BUCKET_AMBITION \
    $HOME/$FILE_TO_RESTORE

  # Ignore error:
  > `Error '[Errno 1] Operation not permitted: b'/path/to/$FILE_TO_RESTORE'' processing .`
  # (where duplicity fails to set perms to that of remote edc user on restored file)

  # Unset defined env variables
  source .unset_env_variables.conf

As a convenience, see also ``${HOME}/.duplicity/restore_file.sh``.  To use:

.. code-block:: bash

  cd ${HOME}/.duplicity

  # Load defined env variables
  source .env_variables.conf

  # Increase max files that can be opened
  ulimit -n 1024

  # Define file to restore
  export FILE_TO_RESTORE=ambition_production-20230731160001.sql

  # Restore $FILE_TO_RESTORE
  #    from most recent backup
  #    from $AWS_ENDPOINT/$AWS_BUCKET_AMBITION
  #      to $HOME/$FILE_TO_RESTORE
  # (note will fail if file exists)
  ./restore_file.sh "$AWS_ENDPOINT/$AWS_BUCKET_AMBITION" "$FILE_TO_RESTORE"

  # Ignore error:
  > `Error '[Errno 1] Operation not permitted: b'/path/to/$FILE_TO_RESTORE'' processing .`
  # (where duplicity fails to set perms to that of remote edc user on restored file)

  # Unset defined env variables
  source .unset_env_variables.conf

Restore file from previous backup
+++++++++++++++++++++++++++++++++

To restore MySQL dump only available on a previous duplicity backup:

.. code-block:: bash

  cd ${HOME}/.duplicity

  # Load defined env variables
  source .env_variables.conf

  # Increase max files that can be opened
  ulimit -n 1024

  # Define file to restore and backup date/time to restore from
  export FILE_TO_RESTORE=ambition_production-20230725200001.sql
  export TIME_TO_RESTORE=2023-07-26  # must be >= backup file date

  # Restore $FILE_TO_RESTORE
  #    from backup on $TIME_TO_RESTORE (see 'man duplicity' for acceptable values)
  #    from $AWS_ENDPOINT/$AWS_BUCKET_AMBITION
  #      to $HOME/$FILE_TO_RESTORE
  # (note will fail if file exists)
  duplicity --verbosity info \
    --encrypt-sign-key=$GPG_KEY \
    --log-file $HOME/.duplicity/duplicity_restore.log \
    --file-to-restore $FILE_TO_RESTORE \
    --time $TIME_TO_RESTORE \
    $AWS_ENDPOINT/$AWS_BUCKET_AMBITION \
    $HOME/$FILE_TO_RESTORE

  # Ignore error:
  > `Error '[Errno 1] Operation not permitted: b'/path/to/$FILE_TO_RESTORE'' processing .`
  # (where duplicity fails to set perms to that of remote edc user on restored file)

  # Unset defined env variables
  source .unset_env_variables.conf

As a convenience, see also ``${HOME}/.duplicity/restore_file.sh``.  To use:

.. code-block:: bash

  cd ${HOME}/.duplicity

  # Load defined env variables
  source .env_variables.conf

  # Increase max files that can be opened
  ulimit -n 1024

  # Define file to restore and backup date/time to restore from
  export FILE_TO_RESTORE=ambition_production-20230725200001.sql
  export TIME_TO_RESTORE=2023-07-26  # must be >= backup file date

  # Restore $FILE_TO_RESTORE
  #    from backup on $TIME_TO_RESTORE (see 'man duplicity' for acceptable values)
  #    from $AWS_ENDPOINT/$AWS_BUCKET_AMBITION
  #      to ${HOME}/${FILE_TO_RESTORE}
  # (note will fail if file exists)
  ./restore_file.sh "$AWS_ENDPOINT/$AWS_BUCKET_AMBITION" "$FILE_TO_RESTORE" "$TIME_TO_RESTORE"

  # Ignore error:
  > `Error '[Errno 1] Operation not permitted: b'/path/to/$FILE_TO_RESTORE'' processing .`
  # (where duplicity fails to set perms to that of remote edc user on restored file)

  # Unset defined env variables
  source .unset_env_variables.conf



Import restored MySQL dump into MySQL
-------------------------------------
.. code-block:: bash

  export RESTORED_DB_NAME=ambition_restored
  mysql -Bse "create database $RESTORED_DB_NAME character set utf8;"

  # Import using earlier specified file name
  mysql -u root -p $RESTORED_DB_NAME  <$HOME/$FILE_TO_RESTORE

  # Alternatively, explicitly define database and dump file path
  mysql -u root -p ambition_restored  <$HOME/ambition_production-20230731160001.sql


Check restored data
-------------------

Ensure most recent entry is as expected.

.. code-block:: bash

  export RESTORED_DB_NAME=ambition_restored
  mysql $RESTORED_DB_NAME


Check timestamp on last record in admin log

.. code-block:: sql

  mysql> select * from django_admin_log order by action_time desc LIMIT 1\G;
