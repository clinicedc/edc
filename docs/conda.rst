Install Miniconda3 (Conda)
==========================

To silently install the latest Miniconda3

.. code-block:: bash

    $ mkdir -p ~/miniconda3 \
      && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh \
      && bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 \
      && rm -rf ~/miniconda3/miniconda.sh \
      && ~/miniconda3/bin/conda init \
      && ~/miniconda3/bin/conda config --set auto_activate_base false

    # adapted from: https://docs.conda.io/projects/miniconda/en/latest/
    #
    # args used:
    # -b           run install in batch mode (without manual intervention),
    #              it is expected the license terms (if any) are agreed upon
    # -u           update an existing installation
    # -p PREFIX    install prefix, defaults to $PREFIX, must not contain spaces.

..or to manually install the latest Miniconda3

.. code-block:: bash

    $ mkdir ~/miniconda3
    $ cd ~/miniconda3
    $ curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    $ sha256sum Miniconda3-latest-Linux-x86_64.sh
    $ sh Miniconda3-latest-Linux-x86_64.sh
    $ conda config --set auto_activate_base false


M1/Apple Silicon Notes

.. code-block:: bash

    $ conda config --add channels conda-forge
    $ conda config --set channel_priority strict


Restart the shell and create a new env named `edc`

.. code-block:: bash

    $ conda create -n edc python=3.12

Activate the env

.. code-block:: bash

    $ conda activate edc
