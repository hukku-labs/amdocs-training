FROM ubuntu
MAINTAINER suhel
RUN apt update
RUN apt install -yq build-essential make libsqlite3-dev sqlite3
WORKDIR /opt/amdocs-training
COPY  . /opt/amdocs-training
RUN make all
CMD ["bin/facebooc"]
