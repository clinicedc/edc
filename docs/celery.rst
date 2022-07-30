
RabbitMQ
========

Services
++++++++

.. code-block:: bash

	$ sudo rabbitmqctl add_user myuser mypassword

	$ sudo rabbitmqctl add_vhost myvhost

	$ sudo rabbitmqctl set_user_tags myuser mytag

	$ sudo rabbitmqctl set_permissions -p myvhost myuser ".*" ".*" ".*"


Celery
======

Settings
++++++++

Add the following to settings.py. When ready, set ``CELERY_ENABLED`` = True.

.. code-block:: bash

	# settings.py

	...

	# CELERY STUFF
	CELERY_BROKER_USER=<user>
	CELERY_BROKER_PASSWORD=<password>
	CELERY_BROKER_HOST=<mq host>
	CELERY_BROKER_PORT=5672
	CELERY_ENABLED=False

	...


Daemonizing with systemd
++++++++++++++++++++++++

See http://docs.celeryproject.org/en/latest/userguide/daemonizing.html#usage-systemd

Celery User
+++++++++++

Create a user ``celery``

.. code-block:: bash

	sudo adduser celery


Celery Folders
++++++++++++++

Create working folders under the home folder:

.. code-block:: bash

	sudo su - celery
	mkdir -p working/uat && \
	mkdir log/ && \
	mkdir pid/

Create ``/etc/celery``

.. code-block:: bash

	sudo mkdir /etc/celery


Celery Configuration
++++++++++++++++++++

Create ``/etc/celery/celery.conf``

.. code-block:: bash

	CELERYD_NODES="w1"

	CELERY_BIN="/home/ambition/.venvs/ambition/bin/celery"

	CELERY_APP="ambition_edc"

	CELERYD_MULTI="multi"

	CELERYD_OPTS="--time-limit=300 --concurrency=8"

	CELERYD_PID_FILE="/home/celery/pid/%n.pid"
	CELERYD_LOG_FILE="/home/celery/log/%n%I.log"
	CELERYD_LOG_LEVEL="INFO"

	CELERYBEAT_PID_FILE="/home/celery/pid/beat.pid"
	CELERYBEAT_LOG_FILE="/home/celery/log/beat.log"


Create ``/etc/celery/celery_uat.conf``

.. code-block:: bash

	CELERYD_NODES="w1"

	CELERY_BIN="/home/uat/.venvs/ambition/bin/celery"

	CELERY_APP="ambition_edc"

	CELERYD_MULTI="multi"

	CELERYD_OPTS="--time-limit=300 --concurrency=8"

	CELERYD_PID_FILE="/home/celery/pid/%n.uat.pid"
	CELERYD_LOG_FILE="/home/celery/log/%n%I.uat.log"
	CELERYD_LOG_LEVEL="INFO"

	CELERYBEAT_PID_FILE="/home/celery/pid/beat.uat.pid"
	CELERYBEAT_LOG_FILE="/home/celery/log/beat.uat.log"

Celery systemd services
+++++++++++++++++++++++

Copy service file to ``/etc/systemd/system/celery.service``

.. code-block:: bash

	# see https://docs.celeryproject.org/en/latest/userguide/daemonizing.html#daemon-systemd-generic

	[Unit]
	Description=Celery Service
	After=network.target

	[Service]
	Type=forking
	User=celery
	Group=celery
	EnvironmentFile=/etc/celery/celery.conf
	WorkingDirectory=/home/celery/working
	ExecStart=/bin/sh -c '${CELERY_BIN} multi start ${CELERYD_NODES} \
	  -A ${CELERY_APP} --pidfile=${CELERYD_PID_FILE} \
	  --logfile=${CELERYD_LOG_FILE} --loglevel=${CELERYD_LOG_LEVEL} ${CELERYD_OPTS}'
	ExecStop=/bin/sh -c '${CELERY_BIN} multi stopwait ${CELERYD_NODES} \
	  --pidfile=${CELERYD_PID_FILE}'
	ExecReload=/bin/sh -c '${CELERY_BIN} multi restart ${CELERYD_NODES} \
	  -A ${CELERY_APP} --pidfile=${CELERYD_PID_FILE} \
	  --logfile=${CELERYD_LOG_FILE} --loglevel=${CELERYD_LOG_LEVEL} ${CELERYD_OPTS}'

	[Install]
	WantedBy=multi-user.target


Copy service file to ``/etc/systemd/system/celery-uat.service``

.. code-block:: bash

	# see https://docs.celeryproject.org/en/latest/userguide/daemonizing.html#daemon-systemd-generic

	[Unit]
	Description=Celery Service (UAT)
	After=network.target

	[Service]
	Type=forking
	User=celery
	Group=celery
	EnvironmentFile=/etc/celery/celery_uat.conf
	WorkingDirectory=/home/celery/working/uat
	ExecStart=/bin/sh -c '${CELERY_BIN} multi start ${CELERYD_NODES} \
	  -A ${CELERY_APP} --pidfile=${CELERYD_PID_FILE} \
	  --logfile=${CELERYD_LOG_FILE} --loglevel=${CELERYD_LOG_LEVEL} ${CELERYD_OPTS}'
	ExecStop=/bin/sh -c '${CELERY_BIN} multi stopwait ${CELERYD_NODES} \
	  --pidfile=${CELERYD_PID_FILE}'
	ExecReload=/bin/sh -c '${CELERY_BIN} multi restart ${CELERYD_NODES} \
	  -A ${CELERY_APP} --pidfile=${CELERYD_PID_FILE} \
	  --logfile=${CELERYD_LOG_FILE} --loglevel=${CELERYD_LOG_LEVEL} ${CELERYD_OPTS}'

	[Install]
	WantedBy=multi-user.target

CeleryBeat Services
+++++++++++++++++++

Copy service file ``/etc/systemd/system/celerybeat.service``

.. code-block:: bash

	# see https://docs.celeryproject.org/en/latest/userguide/daemonizing.html#daemon-systemd-generic

	[Unit]
	Description=Celery Beat Service
	After=network.target

	[Service]
	Type=simple
	User=celery
	Group=celery
	EnvironmentFile=/etc/celery/celery.conf
	WorkingDirectory=/home/celery/working
	ExecStart=/bin/sh -c '${CELERY_BIN} beat  \
	  -A ${CELERY_APP} --pidfile=${CELERYBEAT_PID_FILE} \
	  --logfile=${CELERYBEAT_LOG_FILE} --loglevel=${CELERYD_LOG_LEVEL}'

	[Install]
	WantedBy=multi-user.target


Copy service file ``/etc/systemd/system/celerybeat-uat.service``

.. code-block:: bash

	# see https://docs.celeryproject.org/en/latest/userguide/daemonizing.html#daemon-systemd-generic

	[Unit]
	Description=Celery Beat Service
	After=network.target

	[Service]
	Type=simple
	User=celery
	Group=celery
	EnvironmentFile=/etc/celery/celery_uat.conf
	WorkingDirectory=/home/celery/working/uat
	ExecStart=/bin/sh -c '${CELERY_BIN} beat  \
	  -A ${CELERY_APP} --pidfile=${CELERYBEAT_PID_FILE} \
	  --logfile=${CELERYBEAT_LOG_FILE} --loglevel=${CELERYD_LOG_LEVEL}'

	[Install]
	WantedBy=multi-user.target


Load services
+++++++++++++

.. code-block:: bash

	sudo systemctl daemon-reload

	sudo systemctl restart celery-uat.service
	sudo systemctl restart celery.service

	sudo systemctl restart celerybeat-uat.service
	sudo systemctl restart celerybeat.service
