
Install Miniconda3

.. code-block:: bash

	mkdir ~/tmp

	cd ~/tmp

	curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

	sha256sum Miniconda3-latest-Linux-x86_64.sh

	sh Miniconda3-latest-Linux-x86_64.sh

	conda config --set auto_activate_base false


M1/Apple Silicon Notes

.. code-block:: bash

	conda config --add channels conda-forge
	conda config --set channel_priority strict


Restart the shell and create a new env named `edc`

.. code-block:: bash

	conda create -n edc python=3.9

Activate the env

.. code-block:: bash

	conda activate edc
