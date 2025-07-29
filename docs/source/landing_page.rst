
Setting up the project landing page(s)
--------------------------------------


First, ensure that Nginx has been installed and configured as detailed in the `Configure Web Services`_ guide.

.. _Configure Web Services: configure_web_services.rst

Clone the repo, if required:

.. code-block:: bash

	$ git clone -b main https://github.com/ambition-trial/ambition-edc.git ~/app

Copy static html files over:

.. code-block:: bash

	$ sudo cp -r ~/app/bin/nginx/www/* /var/www/html/

Test and reload:

.. code-block:: bash

	$ sudo nginx -t

	$ sudo systemctl restart nginx

Check:

.. code-block:: bash

	$ curl http://ambition.clinicedc.org
