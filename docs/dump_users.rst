


.. code-block:: bash

	python manage.py dumpdata --indent=2 --natural-primary --natural-foreign auth.user -o users.json

	python manage.py loaddata ~/users.json