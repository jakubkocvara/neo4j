ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

USER root

RUN apt-get update 

USER $NB_UID
COPY requirements.txt .
RUN pip install -r requirements.txt
