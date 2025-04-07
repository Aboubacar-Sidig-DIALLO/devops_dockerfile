FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /tmp/site
RUN cp -r /tmp/site/* /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g", "daemon off;"]
