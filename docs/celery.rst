
Celery
======

Set up celery to start using systemd

See docs at https://docs.celeryq.dev/en/stable/userguide/daemonizing.html#usage-systemd

Also, See folder bin for sample systemd service files

1. create a celery app per instance (live, uat, debug) in folder ``celery`` under your project edc folder, such as ``meta_edc.celery``.

.. code-block:: text

    meta_edc
        |--- celery
               |---debug.py
               |---live.py
               |---uat.py


You need to create a systemd EnvironmentFile. Again using ``meta-edc`` project as an example:

.. code-block:: bash

    # celery.live.conf

    # Name of nodes to start
    CELERYD_NODES="w1 w2"

    # Absolute or relative path to the 'celery' command:
    CELERY_BIN="/home/live/miniconda3/envs/edc/bin/celery"

    # App instance to use
    CELERY_APP="meta_edc.celery.live:app"

    # Where to chdir at start.
    CELERYD_CHDIR="/home/live/app/"

    # How to call manage.py
    CELERYD_MULTI="multi"

    # Extra command-line arguments to the worker
    CELERYD_OPTS="--time-limit=300 --concurrency=8"

    # - %n will be replaced with the first part of the nodename.
    # - %I will be replaced with the current child process index
    #   and is important when using the prefork pool to avoid race conditions.
    CELERYD_PID_FILE="/opt/celery/%n.live.pid"
    CELERYD_LOG_FILE="/var/log/celery/%n%I.live.log"
    CELERYD_LOG_LEVEL="INFO"

    CELERYD_USER="celery"
    CELERYD_GROUP="celery"

The user account celery.

1. Add ``celery`` account to "live" and "uat" groups
2. for logging or workers, create ``/var/log/celery`` (0755 celery celery)
3. for the PID file, create ``/opts/celery`` (0755 celery celery)

In settings or your .env file, set ``CELERY_ENABLED=True``.

Install ``celery`` into your env.

.. code-block:: bash

    pip install -U celery[redis]

Load services
+++++++++++++

.. code-block:: bash

	sudo systemctl daemon-reload
	sudo systemctl enable celery.uat.service
	sudo systemctl enable celery.live.service
	sudo systemctl start celery.uat.service
	sudo systemctl start celery.live.service
