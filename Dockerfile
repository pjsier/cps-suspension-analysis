FROM python:2.7.11

MAINTAINER Patrick Sier <pjsier@gmail.com>

RUN apt-get update && \
  apt-get install -y \
    libspatialindex-dev \
    python-dev \
    gfortran \
    libopenblas-dev \
    libgeos-dev \
    libgdal1-dev \
    libproj-dev \
    python-numpy \
    python-scipy \
    python-pandas \
    python-shapely \
    python-matplotlib

RUN pip install \
  jupyter \
  rtree \
  pysal \
  matplotlib \
  scipy

RUN pip install git+https://github.com/geopandas/geopandas.git

RUN mkdir /home/jupyter
WORKDIR /home/jupyter

EXPOSE 8888
CMD [ "bash", "run.sh" ]
