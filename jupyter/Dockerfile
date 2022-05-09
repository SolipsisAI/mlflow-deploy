FROM jupyter/scipy-notebook:latest

RUN pip install mlflow[extras]

COPY requirements/requirements-base.txt requirements-base.txt
COPY requirements/requirements-pytorch.txt requirements-pytorch.txt
COPY requirements/requirements-huggingface.txt requirements-huggingface.txt

RUN pip install -r requirements-base.txt
RUN pip install -r requirements-pytorch.txt
RUN pip install -r requirements-huggingface.txt 

