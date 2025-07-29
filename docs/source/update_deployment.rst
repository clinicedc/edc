
Update a deployment
-------------------

Each server runs two instances of the Edc --one on the ``ambition`` account and the other on the ``uat`` account. The code base on these may not be at the same point in development so update accordingly.

Log in to the server as ``ambition``

.. code-block:: bash

	$ cd app && git pull

	$ source ~/.venvs/ambition/bin/activate

	$ pip install --no-cache-dir -U pip

	$ pip install --no-cache-dir -U -r requirements/stable.txt

	$ pip install -e .

	$ python manage.py check

Resolve any issues before continuing.

Run migrate::

	$ python manage.py check


Restart gunicorn

.. code-block:: bash

	$ sudo systemctl daemon-reload \
	  && sudo systemctl restart gunicorn

Switch to the ``uat`` user and repeat, if required.
