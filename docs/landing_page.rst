
Setting up the project landing page
-----------------------------------


Clone the repo, if required:

.. code-block:: bash

	$ git clone https://github.com/ambition-trial/ambition-edc.git

.. code-block:: bash

	cd $REPO

	$ sudo cp bin/index.html /var/www/html

	$ sudo cp bin/nginx/ambition-sites.conf /etc/nginx/sites-available/ambition-sites.conf

(if no longer required, delete the repo)

Unlink default

.. code-block:: bash

	$ sudo unlink /etc/nginx/sites-enabled/default

Enable ``ambition-sites``:

.. code-block:: bash

	$ sudo ln -s /etc/nginx/sites-available/ambition-sites.conf /etc/nginx/sites-enabled

Test and reload

.. code-block:: bash

	$ sudo nginx -t

	$ sudo systemctl restart nginx

Check

.. code-block:: bash

	$ curl http://ambition.clinicedc.org
