FROM debian:latest

# Install services, packages and do cleanup
RUN apt-get update && \
    apt-get -y install && \
    apt-get install filezilla

# COPY FILES

# EXPOSE APACHE
EXPOSE 80