
.. contents:: Contents
   :depth: 3
   :backlinks: top

Backup using duplicity
######################

Backing up the backups
++++++++++++++++++++++
**IMPORTANT**

  If using duplicity **BE ABSOLUTELY SURE** you export **AND** backup the
  ``gnupg`` keys somewhere other than the backup server.

  .. code-block:: bash

    # To export:
    $ sudo su <backup user>
    $ gpg --output $HOME/dup.gpg.pub --armor --export <key_id>
    $ gpg --output $HOME/dup.gpg.priv --armor --pinentry-mode=loopback --export-secret-keys <key_id>

  Best to backup the entire ``~/.gnupg`` folder too.

  Once configured, backup the ``~/.duplicity`` folder as well.


Configure database backups
++++++++++++++++++++++++++

Install prerequisites
---------------------
Install ``duplicity``

(assumes already configured MySQL DB server)

.. code-block:: bash

  $ sudo apt-get update

  $ sudo apt-get install duplicity haveged python3-boto

Configure server backup/service account
---------------------------------------
Create a backup/service account ``edc``, and switch to it.  **Everything**
backup related should be done with this account.

.. code-block:: bash

  $ sudo adduser edc

  $ su edc

Configure backup destination
----------------------------
It's recommended to configure the backups, backup cache and backup logs to be
stored on a separate disk to the system disk (which contains any live databases).
This ensures any issues caused by the backups (such as the backups, logs or
cache filling the disk) won't affect the live database(s).

To backup to an externally mounted disk:

.. code-block:: bash

  # Create local backup, cache and logs dirs on external mount point,
  # and link them to local profile
  $ mkdir -p /path/to/mount/mysql_backup/{_cache/duplicity,_logs}
  $ ln -s /path/to/mount/mysql_backup ~/mysql_backup

  # Move duplicity cache onto mount
  # (so if it grows too big, which it eventually will, it doesn't bring down
  # the entire server)
  $ mkdir -p ~/.cache/
  $ ln -s /path/to/mount/mysql_backup/_cache/duplicity ~/.cache/duplicity

  # Set permissions if required (from account with sudo)
  $ chmod 700 ~/.cache/
  $ chmod 700 /path/to/mount/mysql_backup/
  $ sudo chown edc:edc /path/to/mount/mysql_backup/{_cache,_cache/duplicity,_logs}


Alternatively, to backup to local folders:

.. code-block:: bash

  # Create local backup/logs dirs
  $ mkdir -p ~/mysql_backup/_logs


Configure MySQL backup/service account
--------------------------------------

Setup MySQL backup/service account

.. code-block:: bash

  # Login to mysql as user with permissions to create users
  $ mysql

.. code-block:: sql

  # Create backup user with permissions to backup ALL databases on server
  mysql> CREATE USER 'edc-backup'@'localhost' IDENTIFIED BY 'some_password';
  mysql> GRANT SELECT, SHOW VIEW, TRIGGER, LOCK TABLES, PROCESS ON *.* TO 'edc-backup'@'localhost';
  mysql> FLUSH PRIVILEGES;


Configure access to MySQL

.. code-block:: bash

  $ nano ~/.my.cnf

and paste

.. code-block:: bash

  [client]
  USER=edc-backup
  PASS=some_password


Configure duplicity/backup scripts dir
--------------------------------------
To setup a *new* script/configuration folder for ``duplicity``:

.. code-block:: bash

  $ mkdir ~/.duplicity

*OR* copy an existing ``.duplicity`` config from another host.

.. code-block::

    rsync -chavzP --stats user@source.host:/path/to/remote/.duplicity/ ~/.duplicity/

    # If using an external mount point for logs
    rm ~/.duplicity/logs
    ln -s /path/to/mount/mysql_backup/_logs ~/.duplicity/logs

    # IMPORTANT: before continuing, be sure to edit (as a minimum)
    #            $AWS_BUCKET_ROOT in .env_variables.conf so as not to clobber
    #            any existing backups

*OR* restore the ``.duplicity`` folder from your archive.

Regardless of method to create/restore the .duplicity folder

.. code-block:: bash

  # Set permissions to only edc user
  $ chmod 700 ~/.duplicity


Configure encryption/GPG keys
-----------------------------

To encrypt backed up files before transferring to cloud storage, either generate
new GPG keys *OR* restore the ``.gnugp`` folder from your backup.

Either generate new keys

.. code-block:: bash

  $ gpg --version

  $ gpg --gen-key


*OR* import keys exported from elsewhere

.. code-block:: bash

  # To export keys from elsewhere
  $ gpg --output $HOME/dup.gpg.pub --armor --export <key_id>
  $ gpg --output $HOME/dup.gpg.priv --armor --pinentry-mode=loopback --export-secret-keys <key_id>

  # To import on 'new' server, copy over and ...
  $ gpg --pinentry-mode=loopback --import /path/to/dup.gpg.priv

Take note of ``your-GPG-public-key-id``


Configure the backup
--------------------
.. code-block:: bash

  $ nano ~/.duplicity/.env_variables.conf

Paste the following into ``.env_variables.conf`` filling in your values:

.. code-block:: bash

  export AWS_ACCESS_KEY_ID="your-access-key"
  export AWS_SECRET_ACCESS_KEY="your-secret-key"
  export AWS_ENDPOINT="s3://endpoint-name.com"
  export AWS_BUCKET_ROOT="bucket-name"

  # Duplicity/GPG encryption key config
  export GPG_KEY="your-GPG-public-key-id"
  export PASSPHRASE="your-GPG-key-passphrase"

  # Local backup config
  export LOCAL_BACKUP_ROOT=$HOME/mysql_backup
  export DB_DATE=$(date +%Y%m%d%H%M%S)

  # Configure the following for EACH database to be backed up, replacing
  # instances of `AMBITION` and `ambition` with appropriate database/trial
  # identifier
  export BACKUP_DIR_AMBITION=$LOCAL_BACKUP_ROOT/ambition/
  export AWS_BUCKET_AMBITION="${AWS_BUCKET_ROOT}/ambition/"
  export DB_NAME_AMBITION=ambition_production
  export DB_FILE_AMBITION=$BACKUP_DIR_AMBITION$DB_NAME_AMBITION-$DB_DATE.sql

Before proceeding, ensure that at endpoint ``$AWS_ENDPOINT``
you have a space/bucket configured with the name defined in ``$AWS_BUCKET_ROOT``.
Also ensure you have any specific subfolders too, e.g. an ``ambition`` subfolder
as defined in ``$AWS_BUCKET_AMBITION``.

.. code-block:: bash

  $ nano ~/.duplicity/.unset_env_variables.conf

Paste the following into ``.unset_env_variables.conf`` adding/modifying
individual database variable names where appropriate:

.. code-block:: bash

  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_ENDPOINT
  unset AWS_BUCKET_ROOT

  unset GPG_KEY
  unset PASSPHRASE

  unset LOCAL_BACKUP_ROOT
  unset DB_DATE

  # Configure the following for EACH database being backed up, replacing
  # `AMBITION` with appropriate database/trial identifier
  unset BACKUP_DIR_AMBITION
  unset AWS_BUCKET_AMBITION
  unset DB_NAME_AMBITION
  unset DB_FILE_AMBITION


.. code-block:: bash

  # Set permissions on conf files
  $ chmod 0600 ~/.duplicity/{.env_variables.conf,.unset_env_variables.conf}

  # Create the backup script, and set permissions
  $ touch ~/.duplicity/.backup.sh
  $ chmod 0700 ~/.duplicity/.backup.sh


Run the backup for a single database
------------------------------------

A basic setup to backup a single database (``AMBITION``), by:

* creating a local backup using mysqldump
* transferring the backup files (encrypted) to cloud storage using duplicity

.. code-block:: bash

  $ nano ~/.duplicity/.backup.sh

.. code-block:: bash

  #!/bin/bash

  . "$HOME/.duplicity/.env_variables.conf"

  cd "$BACKUP_DIR_AMBITION" \
    && mysqldump "$DB_NAME_AMBITION" -r "$DB_FILE_AMBITION" \
    && duplicity \
      --verbosity info \
      --encrypt-sign-key=$GPG_KEY \
      --full-if-older-than 7D \
      --log-file "$HOME/.duplicity/logs/duplicity_info.log" \
      "$BACKUP_DIR_AMBITION" "$AWS_ENDPOINT/AWS_BUCKET_AMBITION"

  . "$HOME/.duplicity/.unset_env_variables.conf"

To run backup

.. code-block:: bash

  $ su edc
  $ ${HOME}/.duplicity/.backup.sh


Run the backup for multiple databases
-------------------------------------

A more advanced setup to backup multiple databases (``AMBITION``, ``XXX``,
``YYY``), for each:

* creating a local backup using mysqldump
* transferring the backup files (encrypted) to cloud storage using duplicity
* removing any local backup files 7 days or older

.. code-block:: bash

  $ nano ~/.duplicity/.backup.sh

.. code-block:: bash

  #!/bin/bash

  # ######################################################
  # Use duplicity to backup all files in specified $backup_dir to $aws_dest
  #
  # 1. run mysqldump to $backup_dir
  # 2. transfer all files from $backup_dir to $aws_dest w/ duplicity
  # 3. remove all *.sql files from $backup_dir older than $no_days_to_keep (currently 7) days
  #
  # ######################################################
  function backup_and_archive {
      # function params
      local backup_dir=$1
      local aws_bucket=$2
      local db_name=$3
      local db_file=$4

      # declare other vars
      local aws_dest=$AWS_ENDPOINT/$aws_bucket
      local no_days_to_keep=6

      echo " Backing up '$db_name' to '$db_file' and then '$aws_bucket' ..."
      cd "$backup_dir" \
        && mysqldump "$db_name" -r "$db_file" \
        && duplicity \
          --verbosity info \
          --encrypt-sign-key=$GPG_KEY \
          --full-if-older-than 7D \
          --log-file "$HOME/.duplicity/logs/duplicity_info.log" \
          "$backup_dir" "$aws_dest" \
        && find "$backup_dir" -type f -mtime +$no_days_to_keep -name '*.sql' -execdir rm -v -- '{}' +
  }

  . "$HOME/.duplicity/.env_variables.conf"

  # run backup for each DB: (configured in .env_variables.conf as AMBITION, XXX, YYY)
  backup_and_archive "$BACKUP_DIR_AMBITION" "$AWS_BUCKET_AMBITION" "$DB_NAME_AMBITION" "$DB_FILE_AMBITION"
  backup_and_archive "$BACKUP_DIR_XXX" "$AWS_BUCKET_XXX" "$DB_NAME_XXX" "$DB_FILE_XXX"
  backup_and_archive "$BACKUP_DIR_YYY" "$AWS_BUCKET_YYY" "$DB_NAME_YYY" "$DB_FILE_YYY"

  . "$HOME/.duplicity/.unset_env_variables.conf"

To run backup

.. code-block:: bash

  $ su edc
  $ ${HOME}/.duplicity/.backup.sh


Schedule the backup
-------------------

Run

.. code-block:: bash

  $ crontab -e

To schedule the backup to run every 4 hours, logging output to ``edc_backup.log`` add the following (modifying paths if required):

.. code-block:: bash

  0 */4 * * * /home/edc/.duplicity/.backup.sh >> /home/edc/.duplicity/logs/edc_backup.log 2>&1


Rotate backup log files
-----------------------

.. code-block:: bash

  # Create config file, e.g.
  $ sudo vi /etc/logrotate.d/duplicity-backup

To rotate logs once a week, and keep up to 52 weeks of logs, add following
(modifying path if required):

.. code-block:: bash

  /home/edc/.duplicity/logs/*.log {
    weekly
    rotate 52
    compress
    create
    missingok
    notifempty
    dateext
    dateformat .%Y.%m.%d
  }

To test/validate log rotation config:

.. code-block:: bash

  $ sudo logrotate -d /etc/logrotate.d/duplicity-backup

To force rotation of the log files now (even if specified criteria for rotation
not met):

.. code-block:: bash

  $ sudo logrotate --force /etc/logrotate.d/duplicity-backup


Reviewing backups (cloud/remote)
++++++++++++++++++++++++++++++++

.. code-block:: bash

  . "$HOME/.duplicity/.env_variables.conf"

  # Basic check to see details of remote duplicity backups for database, Ambition
  $ duplicity collection-status $AWS_ENDPOINT/$AWS_BUCKET_AMBITION

  # List files available to restore from most recent backup
  # (ensures we can decrypt - requires gpg keys to have been imported)
  $ duplicity list-current-files $AWS_ENDPOINT/$AWS_BUCKET_AMBITION

  # List files available to restore from backup on or before specified --time
  $ duplicity list-current-files --time=2023-07-27 $AWS_ENDPOINT/$AWS_BUCKET_AMBITION

  . "$HOME/.duplicity/.unset_env_variables.conf"


Restoring backups
+++++++++++++++++

Restore single file (from the cloud)
------------------------------------

The following assumes a restore for database, Ambition, defined in ``.env_variables.conf``

.. code-block:: bash

  $ touch ~/.duplicity/.restore_file.sh
  $ chmod 0700 ~/.duplicity/.restore_file.sh
  $ nano ~/.duplicity/.restore_file.sh

.. code-block:: bash

  . "$HOME/.duplicity/.env_variables.conf"

  # Note will fail if file exists
  duplicity --verbosity info \
   --encrypt-sign-key=$GPG_KEY \
   --log-file $HOME/.duplicity/duplicity_restore.log \
   --file-to-restore $FILE_TO_RESTORE \
   $AWS_ENDPOINT/$AWS_BUCKET_AMBITION \
   $HOME/$FILE_TO_RESTORE

  . "$HOME/.duplicity/.unset_env_variables.conf"


See '`Reviewing backups (cloud/remote)`_' to identify the name of the file to be restored.

To restore file ``ambition_production-20180806160001.sql`` from backup

.. code-block:: bash

  # Set $FILE_TO_RESTORE
  $ export FILE_TO_RESTORE=ambition_production-20180806160001.sql

To restore file:

.. code-block:: bash

  $ su edc
  $ ${HOME}/.duplicity/restore_file.sh


Restore an entire backup directory
----------------------------------

The following will restore **ALL** MySQL dumps for database, Ambition,
defined in ``.env_variables.conf``

.. code-block:: bash

  $ touch ~/.duplicity/.restore.sh
  $ chmod 0700 ~/.duplicity/.restore.sh
  $ nano ~/.duplicity/.restore.sh

A restore file may look like this:

.. code-block:: bash

  . "$HOME/.duplicity/.env_variables.conf"

  # Note will fail if backup folder exists
  duplicity --verbosity info \
   --encrypt-sign-key=$GPG_KEY \
   --log-file $HOME/.duplicity/logs/duplicity_restore.log \
   $AWS_ENDPOINT/$AWS_BUCKET_AMBITION \
   $HOME/$TARGET_DIR

  . "$HOME/.duplicity/.unset_env_variables.conf"

.. code-block:: bash

  # Set $TARGET_DIR
  $ export TARGET_DIR=$HOME/restored_files
  $ mkdir -p "$TARGET_DIR"

To restore directory:

.. code-block:: bash

  $ su edc
  $ ${HOME}/.duplicity/restore.sh


Smoke test restored file
------------------------

To "smoke test" a restored file, first restore the database somewhere

.. code-block:: bash

  $ export db_name=<schema_name_for_restored_db>
  $ export sql_dump=$HOME/<restored_file_name>.sql
  $ mysql -Bse "create database $db_name character set utf8;"
  $ mysql -u root -p $db_name < "$sql_dump"

Open the database

.. code-block:: bash

  $ mysql $db_name

Check the timestamp on last record in the admin log,
for example

.. code-block:: sql

  select * from django_admin_log order by action_time desc LIMIT 1\G;


References
++++++++++

* https://www.digitalocean.com/community/tutorials/how-to-use-duplicity-with-gpg-to-back-up-data-to-digitalocean-spaces
* https://help.ubuntu.com/community/DuplicityBackupHowto#List_Archived_Files
* mysqldump permissions: https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html
* Renew a gpg key: https://gist.github.com/krisleech/760213ed287ea9da85521c7c9aac1df0
* Log file rotation: https://www.digitalocean.com/community/tutorials/how-to-manage-logfiles-with-logrotate-on-ubuntu-16-04
