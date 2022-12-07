
Prepare a server for mysql-server
==================================


Install dependencies

.. code-block:: bash

    sudo apt-get update
    sudo apt-get -y upgrade
    sudo apt-get -y install mysql-server-5.7


Login to MySQL as non-root account


The next steps use the following environment variables.

.. code-block:: bash

    export MYSQL_DATABASE=ambition_production
    export MYSQL_USER=edc
    export MYSQL_USER_PASSWORD=password
    export HOST=localhost


Secure MySQL installation

.. code-block:: bash

    $ sudo mysql_secure_installation

Load timezones into MySQL

.. code-block:: bash

    $ mysql_tzinfo_to_sql /usr/share/zoneinfo | sudo mysql mysql

Create a MySQL database for the app

.. code-block:: bash

    $ echo "CREATE DATABASE $MYSQL_DATABASE CHARACTER SET utf8;" | mysql -u root -p

Create a MySQL account, other than root, to be used on MySQL DB server

.. code-block:: bash

    $ echo "CREATE USER '$MYSQL_USER'@'$HOST' IDENTIFIED BY '$MYSQL_USER_PASSWORD';FLUSH PRIVILEGES;" | mysql
    $ echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'$HOST' WITH GRANT OPTION;" | mysql

Confirm new account can login to new DB

.. code-block:: bash

    $ echo "mysql -u $MYSQL_USER -p $MYSQL_DATABASE" | mysql

Enable ``ufw``, expose 22, 3306

Add droplet to ``db`` firewall

edit mysql.conf to listen on 3306

.. code-block:: bash

    $ sudo nano /etc/mysql/mysql.cnf

Create MySQL account to log in from each remote django host
-----------------------------------------------------------

For each ``$REMOTE_HOST``:

.. code-block:: bash

    $ set +o history  # temporarily disable bash history (so as not to save pw)

    $ export MYSQL_DATABASE=ambition_production
    $ export REMOTE_MYSQL_USER=edc-ambition-live
    $ export REMOTE_MYSQL_USER_PASSWORD=different_p@ssw0rd
    $ export REMOTE_HOST=some_host

    $ echo "CREATE USER '$REMOTE_MYSQL_USER'@'$REMOTE_HOST' IDENTIFIED BY '$REMOTE_MYSQL_USER_PASSWORD';FLUSH PRIVILEGES;" | mysql
    $ echo "GRANT ALL PRIVILEGES ON \`$MYSQL_DATABASE\`.* TO '$REMOTE_MYSQL_USER'@'$REMOTE_HOST';" | mysql

    $ unset REMOTE_MYSQL_USER_PASSWORD  # delete pw variable
    $ set -o history  # re-enable bash history

Show users:

.. code-block:: bash

    $ mysql -Bse 'select user, host from user;'

Confirm each ``REMOTE_MYSQL_USER`` can log in from their respective host.

.. code-block:: bash

    $ echo "mysql -u $REMOTE_MYSQL_USER -p $MYSQL_DATABASE" | mysql


Restore
=======

Steps:
* Restore gpg keys or entire ``.gnupg`` folder
* restore ``.duplicity`` folder
* create ambition_production database

.. code-block:: bash

    mysql -u edc -p -Bse 'create database ambition_production character set utf8;'

Source .duplicity/.env_variables.conf

.. code-block:: bash


    $ source .duplicity/.env_variables.conf

Trigger a restore with URL before backup folder

.. code-block:: bash

    $ duplicity --verbosity info --encrypt-sign-key=$GPG_KEY \
      --log-file $HOME/.duplicity/info.log \
      $AWS_ENDPOINT/$AWS_BUCKET \
      $BACKUP_DIR


Restore the DB with the most recent file, for example, if the most recent file is ``ambition_production-20180730184227.sql``:

.. code-block:: bash

    mysql -u edc -p $DB_NAME < $BACKUP_DIR/ambition_production-20180730184227.sql


list files

.. code-block:: bash

    duplicity list-current-files $AWS_ENDPOINT/$AWS_BUCKET


restore the entire folder

.. code-block:: bash

    duplicity \
      --verbosity info \
      --encrypt-sign-key=$GPG_KEY \
      --log-file $HOME/.duplicity/restore.log \
        $AWS_ENDPOINT/$AWS_BUCKET $BACKUP_DIR


restore one file

.. code-block:: bash

    duplicity \
      --verbosity info \
      --encrypt-sign-key=$GPG_KEY \
      --log-file $HOME/.duplicity/restore.log \
      --file-to-restore=some_file \
        $AWS_ENDPOINT/$AWS_BUCKET $BACKUP_DIR

verify files

.. code-block:: bash

    duplicity verify -v4 $AWS_ENDPOINT/$AWS_BUCKET $BACKUP_DIR
