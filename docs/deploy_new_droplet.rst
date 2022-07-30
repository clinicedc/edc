
.. contents:: Contents
   :depth: 2
   :backlinks: top

Configure droplet from base
---------------------------

Base droplet snapshot is ``ambgab``. Once the new droplet is created some config needs to be changed.

Update the DB
=============

Configure access to mysql on the db droplet
+++++++++++++++++++++++++++++++++++++++++++

To allow the new droplet to access the database, you need to confugre both the firewall and the ``mysql`` database permissions.

Log in to the ``db`` droplet

Update ``mysql`` USER and privileges

.. code-block:: bash

  mysql> CREATE USER 'edc'@'x.x.x.x' IDENTIFIED BY 'password'; FLUSH PRIVILEGES;
  Query OK, 0 rows affected (0.00 sec)

  mysql> GRANT ALL PRIVILEGES ON *.* TO 'edc'@'x.x.x.x' WITH GRANT OPTION;
  Query OK, 0 rows affected (0.00 sec)


Open the DO firewall on the ``db`` to allow access from this droplet on its private IP.

Switch back to your new droplet and confirm that you can connect to mysql:

.. code-block:: bash

  $ mysql



Update ``.env``
===============

On your new droplet, log in as ``ambition``

Update the repo:

.. code-block:: bash

  $ cd ~/app && git pull

Check ``.env`` to update the following variables:

- DJANGO_ALLOWED_HOSTS
- DJANGO_CUPS_SERVERS
- DJANGO_LANGUAGES
- DJANGO_SITE_ID
- DJANGO_TIME_ZONE
- DJANGO_TOWN

Since the base image is ``gaborone``, you can search and replace for any that mention ``gaborone``:

.. code-block:: bash

  $ sed -i -e 's/gaborone/capetown/g' .env
  $ sed -i -e 's/Gaborone/Johannesburg/g' .env  # for timezone

**Note:** If not ``capetown`` change to the correct town.

Check your changes on each account (``ambition`` and ``uat``)

.. code-block:: bash

  $ source ~/.venvs/ambition/bin/activate

  $ pip install --no-cache-dir -U -r requirements/stable.txt

  $ python manage.py check

Resolve any issues before proceeding


Login as ``uat`` and **repeat** the above steps.


Update web services
===================

These changes can be done from one account on your new droplet.

Log in as ``ambition`` on your new droplet

Since the repo may have updated, restart ``gunicorn``:

.. code-block:: bash

  $ sudo systemctl daemon-reload

  $ sudo systemctl restart gunicorn


Reset the nginx configuration to listen on 80 only. certbot will add an HTTPS server block.

Unlink ``uat.conf``

.. code-block:: bash

  $ sudo unlink /etc/nginx/sites-enabled/ambition.conf
  $ sudo unlink /etc/nginx/sites-enabled/uat.conf
  $ sudo unlink /etc/nginx/sites-enabled/ambition-uat.conf
  $ sudo unlink /etc/nginx/sites-enabled/default

Copy original ``conf`` files from the repo

.. code-block:: bash

  $ sudo cp -R ~/app/bin/nginx/* /etc/nginx/sites-available/

Update the ``server_name``:

In this case we are setting up a ``capetown`` server. You need to change to the correct town.

.. code-block:: bash

  $ sudo sed -i -e 's/gaborone/capetown/g' /etc/nginx/sites-available/ambition.conf

  $ sudo sed -i -e 's/gaborone/capetown/g' /etc/nginx/sites-available/ambition-uat.conf

**Note:** If not ``capetown`` change to the correct town.


Renable each site:

.. code-block:: bash

  $ sudo ln -s /etc/nginx/sites-available/ambition.conf /etc/nginx/sites-enabled
  $ sudo ln -s /etc/nginx/sites-available/ambition-uat.conf /etc/nginx/sites-enabled


Get new certificates and configure for HTTPS:

.. code-block:: bash

  $ sudo certbot --nginx


Configure for both ``xxx.ambition.clinicedc.org`` and xxx.uat.ambition.clinicedc.org``and selected to redirect all traffic to HTTPS.

Check the files

.. code-block:: bash

  $ sudo nginx -t

Restart nginx

.. code-block:: bash

  $ sudo systemctl reload nginx


