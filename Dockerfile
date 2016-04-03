FROM python:2.7.11

MAINTAINER Patrick Sier <pjsier@gmail.com>

RUN apt-get update && \
  apt-get install -y libspatialindex-dev python-dev gfortran libopenblas-dev libgeos-dev libgdal1-dev libproj-dev python-numpy python-scipy python-matplotlib python-pandas python-shapely && \
  pip install jupyter rtree pysal

RUN pip install git+git://github.com/geopandas/geopandas.git

RUN mkdir /home/jupyter
ADD ./jupyter_notebook_config.py /home/jupyter/
WORKDIR /home/jupyter

EXPOSE 8888
ENTRYPOINT [ "jupyter", "notebook" ]
