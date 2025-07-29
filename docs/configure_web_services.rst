Configure Web Services
======================

Gunicorn
--------

Copy the service files to ``systemd``

.. code-block:: bash

	sudo cp -R ~/app/bin/systemd/* /etc/systemd/system/

Create the sockets

.. code-block:: bash

	sudo systemctl start gunicorn.socket

If copying new files, you may be asked to run:

.. code-block:: bash

	sudo systemctl daemon-reload

Enable the sockets

.. code-block:: bash

	sudo systemctl enable gunicorn.socket

``Output``

.. code-block:: bash

	Created symlink /etc/systemd/system/sockets.target.wants/gunicorn.socket → /etc/systemd/system/gunicorn.socket.


If you wish, you can check the status of each:

.. code-block:: bash

	sudo systemctl status gunicorn

``Output, inactive (first time)``::

	● gunicorn.service - gunicorn daemon
	   Loaded: loaded (/etc/systemd/system/gunicorn.service; enabled; vendor preset: enabled)
	   Active: inactive (dead) since Mon 2018-07-23 17:57:25 UTC; 2min 56s ago
	 Main PID: 22953 (code=exited, status=0/SUCCESS)


Try accessing:

.. code-block:: bash

	curl --unix-socket /run/gunicorn.sock localhost

``Output now shows active``::

	● gunicorn.service - gunicorn daemon
	   Loaded: loaded (/etc/systemd/system/gunicorn.service; enabled; vendor preset: enabled)
	   Active: active (running) since Mon 2018-07-23 16:09:01 UTC; 14s ago
	 Main PID: 6839 (gunicorn)
	    Tasks: 4 (limit: 2361)
	   CGroup: /system.slice/gunicorn.service
	           ├─6839 /home/ambition/.venvs/ambition/bin/python3 /home/ambition/.venvs/ambition/bin/gunicorn --access-logfile - --workers 3 --bind unix:/run/
	           ├─6889 /home/ambition/.venvs/ambition/bin/python3 /home/ambition/.venvs/ambition/bin/gunicorn --access-logfile - --workers 3 --bind unix:/run/
	           ├─6897 /home/ambition/.venvs/ambition/bin/python3 /home/ambition/.venvs/ambition/bin/gunicorn --access-logfile - --workers 3 --bind unix:/run/
	           └─6908 /home/ambition/.venvs/ambition/bin/python3 /home/ambition/.venvs/ambition/bin/gunicorn --access-logfile - --workers 3 --bind unix:/run/

	Jul 23 16:09:01 edc2 systemd[1]: Started gunicorn daemon.
	Jul 23 16:09:03 edc2 gunicorn[6839]: [2018-07-23 16:09:03 +0000] [6839] [INFO] Starting gunicorn 19.9.0
	Jul 23 16:09:03 edc2 gunicorn[6839]: [2018-07-23 16:09:03 +0000] [6839] [INFO] Listening at: unix:/run/gunicorn.sock (6839)
	Jul 23 16:09:03 edc2 gunicorn[6839]: [2018-07-23 16:09:03 +0000] [6839] [INFO] Using worker: sync
	Jul 23 16:09:03 edc2 gunicorn[6839]: [2018-07-23 16:09:03 +0000] [6889] [INFO] Booting worker with pid: 6889
	Jul 23 16:09:03 edc2 gunicorn[6839]: [2018-07-23 16:09:03 +0000] [6897] [INFO] Booting worker with pid: 6897
	Jul 23 16:09:03 edc2 gunicorn[6839]: [2018-07-23 16:09:03 +0000] [6908] [INFO] Booting worker with pid: 6908


if there are any problems check:

.. code-block:: bash

	sudo journalctl -u gunicorn   # etc

If the code base changes:

.. code-block:: bash

	sudo systemctl daemon-reload
	sudo systemctl restart gunicorn

If needed to reset ...

.. code-block:: bash

	sudo systemctl stop gunicorn-live.socket \
		&& sudo systemctl stop gunicorn-live \
		&& sudo systemctl disable gunicorn-live.socket

	sudo systemctl stop gunicorn-uat.socket \
		&& sudo systemctl stop gunicorn-uat \
		&& sudo systemctl disable gunicorn-uat.socket


Nginx
-----

Copy the configurations to ``/etc/nginx/sites-available``

.. code-block:: bash

	sudo cp -R ~/app/bin/nginx/conf/* /etc/nginx/sites-available/


Replace town referred to in server name

.. code-block:: bash

	# for example
	sudo sed -i -e s/gaborone/blantyre/g /etc/nginx/sites-available/ambition.conf

	# for example
	sudo sed -i -e s/gaborone/blantyre/g /etc/nginx/sites-available/ambition-uat.conf

Enable each site:

.. code-block:: bash

	sudo ln -s /etc/nginx/sites-available/ambition.conf /etc/nginx/sites-enabled

Inspect:

.. code-block:: bash

	ls -la /etc/nginx/sites-enabled

Output:

.. code-block:: bash

	ambition-uat.conf -> /etc/nginx/sites-available/ambition-uat.conf
	ambition.conf -> /etc/nginx/sites-available/ambition.conf

Disable the default site, if enabled:

.. code-block:: bash

	sudo unlink /etc/nginx/sites-enabled/default

Test the new configuration:

.. code-block:: bash

	sudo nginx -t

Output:

.. code-block:: bash

	nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
	nginx: configuration file /etc/nginx/nginx.conf test is successful

Restart Nginx service:

.. code-block:: bash

	sudo systemctl restart nginx

Firewall
========

On application/web-server, check ``ufw`` to open ``openSSH``, ``http``, ``https``

e.g.

.. code-block:: bash

	# review ports opened by application firewall rules
	sudo ufw app info 'OpenSSH'
	sudo ufw app info 'Nginx Full'

	# configure application firewall rules
	sudo ufw allow 'OpenSSH'
	sudo ufw allow 'Nginx Full'

	# review ports opened by application firewall rule
	sudo ufw app info 'Nginx Full'

	# enable the firewall, and check
	sudo ufw enable
	sudo ufw status


Also check cloud firewall to ensure these ports are open

If not already done, on DB server, ensure application server has access to ``3306`` from it's private IP

e.g.

.. code-block:: bash

	sudo ufw allow from <app.server.private.ip> to any port 3306


Certificates and HTTPS configuration
------------------------------------

see https://certbot.eff.org or more specifically `Certbot Instructions for Nginx on Ubuntu 20 <https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal&tab=standard/>`_ (or later)

Remove certbot-auto and any Certbot OS packages:

.. code-block:: bash

	sudo apt-get remove certbot

Install certbot and prepare command:

.. code-block:: bash

	sudo snap install --classic certbot
	sudo ln -s /snap/bin/certbot /usr/bin/certbot


Get and install certificates:

.. code-block:: bash

	sudo certbot --nginx

    Saving debug log to /var/log/letsencrypt/letsencrypt.log

    Which names would you like to activate HTTPS for?
    We recommend selecting either all domains, or all domains in a VirtualHost/server block.
    - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # select blank for all

Test automatic certificate renewal

.. code-block:: bash

	sudo certbot renew --dry-run

Confirm Nginx config still valid:

.. code-block:: bash

	sudo nginx -t

.. code-block:: bash

	sudo systemctl restart nginx

Now check that the DB server will allow access

* check the firewall (under DO)
* check mysql user for this account (edc@privateIP)

See document ``prepare_database``
