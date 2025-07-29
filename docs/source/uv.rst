UV
==

To run tests on the current releases

.. code-block:: bash

    uv venv --clear && \
    source .venv/bin/activate && \
    uv run --active --group test --no-sources coverage run -a runtests.py && \
    uv run --active --group test coverage report

To run tests on locally cloned editable repos

.. code-block:: bash

    uv venv --clear && \
    source .venv/bin/activate && \
    uv run --active --group test coverage run -a runtests.py && \
    uv run --active --group test coverage report

commit

.. code-block:: bash

    rm uv.lock && \
    uv venv --clear && \
    source .venv/bin/activate && \
    uv sync --no-sources --no-dev && \
    uv tree
