FROM postgres:12

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -q update \
  && apt-get -q -y install --no-install-recommends \
    ca-certificates \
    make \
    git \
    postgresql-12-pgrouting \
    postgresql-12-postgis-3 \
    postgresql-12-postgis-3-scripts \
    postgresql-server-dev-12

RUN git clone https://github.com/michelp/pgjwt.git \
  && cd ./pgjwt \
  && make install
