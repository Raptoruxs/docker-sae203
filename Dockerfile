FROM debian:latest

# Update system, install software
RUN apt-get update
RUN apt-get -y install
RUN apt-get -y install proftpd


# Config FTP server

COPY ./proftpd.conf  /etc/proftpd/

RUN addgroup ftpgroup && \
    adduser seb --home /ftpshare && \
    adduser seb ftpgroup && \
    chmod -R 1777 /ftpshare/ && \
    service proftpd restart


# EXPOSE
EXPOSE 80