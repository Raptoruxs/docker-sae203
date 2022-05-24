FROM debian:latest

# Update system, install software
RUN apt-get update && \
    apt-get -y install && \
    apt-get install proftpd


# Config FTP server

RUN addgroup ftpgroup && \
    adduser seb --home /ftpshare && \
    adduser seb ftpgroup && \
    chmod -R 1777 /ftpshare/ && \
    service proftpd restart


# EXPOSE
EXPOSE 80