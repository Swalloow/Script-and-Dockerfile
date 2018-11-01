#!/bin/bash

pyenv install 3.6.1
pyenv virtualenv 3.6.1 python-36
pyenv shell python-36

# jupyter notebook settings
pip install jupyter
jupyter kernelspec list
jupyter notebook --generate-config
vi /Users/username/Library/Jupyter/kernels/python3/jupyter_notebook_config.py

# c.NotebookApp.ip = '127.0.0.1'
# c.NotebookApp.port = 8888
# c.NotebookApp.password = [SHA password]

pyenv shell python-36
python -m ipykernel install --user
