#!/bin/bash
# use carefully
conda deactivate && conda update conda && conda activate edc && \
reqs_prefix=requirements_$(date '+%Y-%m-%d_%Hh%Mm'); \
conda_env=edc; \
conda_py_version=3.12; \
req_file_1=~/tmp/${reqs_prefix}_1_before_conda_rebuild.txt; \
req_file_2=~/tmp/${reqs_prefix}_2_after_conda_rebuild.txt; \
pip freeze > "${req_file_1}" \
&& conda deactivate \
&& conda remove env --yes --name "${conda_env}" --all \
&& conda create --yes --name "${conda_env}" python="${conda_py_version}" \
&& conda activate "${conda_env}" \
&& pip install . \
&& pip freeze > "${req_file_2}" \
&& vimdiff "${req_file_1}" "${req_file_2}"