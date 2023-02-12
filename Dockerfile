FROM  ubuntu


WORKDIR /opt/facebooc2

COPY . .

RUN  apt-get update &&  \
     apt-get install -yq build-essential make git libsqlite3-dev sqlite3 

RUN  make all 

EXPOSE 8080

CMD "bin/facebooc"
