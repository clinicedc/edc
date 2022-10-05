
.. contents:: Contents
   :depth: 2
   :backlinks: top


Local / Development deploy
------------------------

*deploy using runserver (DEBUG=True)*

On your new droplet log in a root and create a new file ``env-setup`` with these variables.
The ``env-setup`` file will be deleted once the install is complete.
Update the values as required, e.g. fill in the correct password for ``MYSQL_USER_PASSWORD``.

.. code-block:: bash

	$ nano $HOME/env-setup

.. code-block:: bash

	export APP_HOST=gaborone.uat.ambition.clinicedc.org
	export APP_NAME=ambition
	export APP_USER=ambition
	export APP_FOLDER=app
	export DJANGO_EXPORT_FOLDER=/home/$APP_USER/export
	export DJANGO_ETC_FOLDER=/home/$APP_USER/.etc/$APP_NAME
	export DJANGO_KEY_FOLDER=$DJANGO_ETC_FOLDER/crypto_fields
	export DJANGO_LOG_FOLDER=/home/$APP_USER/log
	export DJANGO_STATIC_FOLDER=/home/$APP_USER/static
	export MYSQL_DATABASE=ambition
	export MYSQL_USER=edc
	export MYSQL_USER_PASSWORD=password  # need a password
	export REPO=https://github.com/ambition-trial/ambition.git $APP_FOLDER
	export VENV=ambition


Source the file ``env_setup``.

.. code-block:: bash

	$ source $HOME/env-setup
	$ echo $APP_FOLDER

	#output
	app

As root, create the non-root account and setup keys for key-based authentication:

.. code-block:: bash

	# as root, create a non-root account and set up keys
	adduser $APP_USER
	# add to sudo
	usermod -aG sudo $APP_USER
	# copy keys to the new account
	mkdir /home/$APP_USER/.ssh
	cp .ssh/authorized_keys /home/$APP_USER/.ssh
	chown $APP_USER:$APP_USER -R /home/$APP_USER/.ssh
	chmod 700 /home/$APP_USER/.ssh
	chmod 600 /home/$APP_USER/.ssh/authorized_keys


Login as non-root account ``ambition`` and install dependencies.

.. code-block:: bash

	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y install mysql-server-5.7 # if needed
	sudo apt-get -y install mysql-client-5.7 libmysqlclient-dev libcups2-dev ipython3 python3-pip python3-dev python3-venv python3-cups python3-venv redis-server nginx curl


As of Feb 2019 ``ambition`` and ``edc`` modules are tested on python versions 3.7 and above. Ubuntu 18.04 LTS uses python 3.6.7.

To upgrade to python3.7:

.. code-block:: bash

	sudo apt-get update
	sudo apt-get install build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev python3.7 python3.7-venv python3-pip python3.7-dev


Prepare mysql
+++++++++++++

secure MySQL installation::

	sudo mysql_secure_installation

load timezones into MySQL::

	mysql_tzinfo_to_sql /usr/share/zoneinfo | sudo mysql mysql

create a MySQL database for the app::

	echo "CREATE DATABASE $MYSQL_DATABASE CHARACTER SET utf8;" | sudo mysql
	echo "CREATE DATABASE $MYSQL_DATABASE CHARACTER SET utf8;" | mysql -u root -p

create a MySQL account, other than root, to be used by django::

	echo "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_USER_PASSWORD';FLUSH PRIVILEGES;" | sudo mysql
	echo "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_USER_PASSWORD';FLUSH PRIVILEGES;" | mysql -u root -p
	echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'localhost' WITH GRANT OPTION;" | sudo mysql
	echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'localhost' WITH GRANT OPTION;" | mysql -u root -p

Note: if on docker localhost will not work so use the docker IP or '%'


confirm new account can login to new DB::

	echo "mysql -u $MYSQL_USER -p $MYSQL_DATABASE"

if you delete any user don't forget to FLUSH PRIVILEGES;


Prepare the app and the virtualenv
++++++++++++++++++++++++++++++++++

login as non-root account ``ambition``

create and source the virtualenv `ambition`::

	python3.7 -m venv ~/.venvs/$VENV

activate the environment::

	source ~/.venvs/$VENV/bin/activate

**Important:** Confirm you are in your new virtualenv before continuing.

Now ``git pull`` the app::

	cd ~/ && git clone $REPO $APP_FOLDER

Install requirements into the virtualenv::

	cd ~/app \
	&& pip install --no-cache-dir -r requirements/stable.txt \
	&& pip install --no-cache-dir -e .

This seems to not get installed from edc-base, so run it separately::

	pip install --no-cache-dir django[argon2]


Now install the ``.env`` file. The ``.env`` file is not part of the REPO. Open another terminal and copy the apps `.env` file to the app root
assumed coming from your machine, for example::

	echo "scp ~/source/ambition/.envs/.local $APP_USER@$APP_HOST:~/app/.env"
	scp ~/source/ambition/.envs/.local <app_user>@<app_host>:~/app/.env

There is also a sample .env file in the repo. To use that::

	cp $HOME/$APP_FOLDER/env.sample $HOME/$APP_FOLDER/.env

Edit the ``.env`` file as needed::

	nano ~/app/.env

Set permissions::

	chmod 600 ~/app/.env

**IMPORTANT:** inspect the .env variables and edit as required

  **NOTE:** ``DATABASE_URL`` password needs to be escaped if it contains special characters.::

  >>> import urllib
  >>> urllib.parse.quote('my_password$@')

  $ python -c 'from urllib import parse; print(parse.quote("my_password$@"))'

  Output::

	'my_password%24%40'

  See https://github.com/joke2k/django-environ/blob/develop/README.rst#tips::

Create the export and static folders::

	# check the values
	echo "DJANGO_ETC_FOLDER=$DJANGO_ETC_FOLDER" \
	&& echo "DJANGO_EXPORT_FOLDER=$DJANGO_EXPORT_FOLDER" \
	&& echo "DJANGO_KEY_FOLDER=$DJANGO_KEY_FOLDER" \
	&& echo "DJANGO_LOG_FOLDER=$DJANGO_LOG_FOLDER" \
	&& echo "DJANGO_STATIC_FOLDER=$DJANGO_STATIC_FOLDER"

	# create the folders
	mkdir -p $DJANGO_ETC_FOLDER \
	&& mkdir -p $DJANGO_EXPORT_FOLDER \
	&& mkdir -p $DJANGO_KEY_FOLDER \
	&& mkdir -p $DJANGO_LOG_FOLDER \
	&& mkdir -p $DJANGO_STATIC_FOLDER


Copy encryption keys into ``DJANGO_KEY_FOLDER`` . These are also not included in the REPO and are assumed to come from you.
(or if just testing set ``DJANGO_AUTO_CREATE_KEYS=True``)::

	echo "scp user* ambition@$APP_HOST:$DJANGO_KEY_FOLDER/"

**Note:** If you are setting up a test environment and you set ``DJANGO_AUTO_CREATE_KEYS=False`` in ``.env`` to create test keys, you need to set it to ``False``.

Check::

	cd ~/app \
	&& python manage.py check

Output::

	django.db.utils.ProgrammingError: (1146, "Table 'ambition.edc_lab_boxtype' doesn't exist")

Which is expected since you have not migrated the DB yet.

  **Note:** Check the database server IP and the firewall config on both your server and the DB server if you get:::

    ERROR! (2003, "Can't connect to MySQL server on '10.131.71.175' (110)")

  See also the README on database setup.


Now migrate (takes a while ...)::

	python manage.py migrate

Collect static, note that if ``AWS_ENABLED``, will test the connection::

	python manage.py collectstatic

	# note: you should purge CDN cache if required.

Import the holiday file, check the ``.env`` to make sure this is correct::

	python manage.py import_holidays

Import randomization list file, **check the .env to make sure this is correct!!**
Note, you need to manually copy a randomization list to ``DJANGO_ETC_FOLDER`` where the file name is the same as ``DJANGO_RANDOMIZATION_LIST`` in `.env`.::

	python manage.py import_randomization_list

Now if you run check again there should not be any errors.::

	python manage.py check

Output::

	"System check identified no issues (0 silenced)."

Create a super user::

	python manage.py createsuperuser

Now try runserver. be sure PORT 8000 is open on your server. If you get "Invalid HTTP_HOST header: ..." check the ``.env`` file ``DJANGO_ALLOWED_HOSTS``
and add your DOMAIN or IP.::

	python manage.py runserver 0.0.0.0:8000

**IMPORTANT:** If you plan to continue with the next section, don't enter any data.


Production / Live deploy
------------------------

using NGINX/GUNICORN (DEBUG=False)

Deploy onto an Ubuntu 18.04 server

(continued from above)

Since ``DEBUG=True`` above, some variables from the ``.env`` file were ignored.

Now set ``DEBUG=False`` in the ``.env`` file

With ``DEBUG=False``, the app now looks for the encryption keys in ``DJANGO_KEY_FOLDER``.

create ``DJANGO_KEY_FOLDER``::

	mkdir -p $DJANGO_KEY_FOLDER

Copy your production keys to the ``DJANGO_KEY_FOLDER``. Echo command to use to copy keys to this host::

	echo "scp user* $APP_USER@$APP_HOST:$DJANGO_KEY_FOLDER"

Open another terminal and use the above SCP command to copy encryption keys to this folder from your encryption key folder

for example::

	scp user* ambition@206.189.16.89:~/.etc/ambition/crypto_fields

If you run runserver now, the pages will be rendered without static files as expected.::

	python manage.py runserver 0.0.0.0:8000

Notice that the app created django_crypto_fields file::

	ls -la $DJANGO_ETC_FOLDER

Set up gunicorn
---------------

See separate document README_deploy.rst.


Set up NGINX
------------

See separate document README_deploy.rst.


UAT / Testing deploy
--------------------

using NGINX/GUNICORN (DEBUG=True)

Deploy onto an Ubuntu 18.04 server

(continued from Local / Development deploy)

Log in as user ``uat``.::

	ssh uat@....

As user ``uat`` create a new virtualenv in the same way as above::

	python3.7 -m venv ~/.venvs/ambition

	source ~/.venvs/ambition/bin/activate

	cd ~/app \
	&& pip install --no-cache-dir -U -r requirements/stable.txt \
	&& pip install -e .

Use the `.env`` variables to configure a system as a UAT server. Copy the .env from the LIVE server and edit::

	sed -i -e s/DJANGO_LIVE_SYSTEM=True/DJANGO_LIVE_SYSTEM=False/g .env
	sed -i -e s/ambition_production/ambition_uat/g .env
	sed -i -e 's/\/home\/ambition/\/home\/uat/g' .env
	sed -i -e s/DJANGO_RANDOMIZATION_LIST_FILE=randomization_list.csv/DJANGO_RANDOMIZATION_LIST_FILE=test_randomization_list.csv/g .env
	sed -i -e 's/AWS_LOCATION=ambition\/static/AWS_LOCATION=ambition_uat\/static/g' .env
	sed -i -e 's/\.ambition\.clinicedc\.org/\.uat\.ambition\.clinicedc\.org/g' .env

Diff::

	diff -y /home/uat/app/.env /home/ambition/app/.env

Check ``DATABASE_URL`` points to ``ambition_uat``::

	cat .env | grep DATABASE_URL

Copy keys from LIVE::

	cp /home/ambition/.etc/ambition/crypto_fields/user* /home/uat/.etc/ambition/crypto_fields/

Check::

	python manage.py check

If you followed all the steps to setup the LIVE system, then restarting gunicorn and nginx should be all that is necessary::

	sudo systemctl daemon-reload \
	&& sudo systemctl restart gunicorn-uat


Reference
---------

Deploy onto an Ubuntu 18.04 server

* https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal
* https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-1604
* https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04
* https://github.com/joke2k/django-environ/blob/develop/README.rst
* https://www.digitalocean.com/community/tutorials/how-to-set-up-django-with-postgres-nginx-and-gunicorn-on-ubuntu-18-04
* https://www.digitalocean.com/community/tutorials/how-to-set-up-object-storage-with-django
* https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04
* https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-18-04
* https://certbot.eff.org/docs/install.html#docker-user
* https://certbot-dns-digitalocean.readthedocs.io/en/latest/
* https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu-18-04
* https://realpython.com/caching-in-django-with-redis/
* https://realpython.com/caching-in-django-with-redis/
* https://niwinz.github.io/django-redis/latest/

Misc

* https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh
* https://www.digitalocean.com/community/tutorials/how-to-configure-custom-connection-options-for-your-ssh-client

