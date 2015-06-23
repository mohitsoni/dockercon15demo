FROM ubuntu:14.04
MAINTAINER Mohit Soni

RUN apt-get update
RUN apt-get install -y --force-yes software-properties-common build-essential python git-core nodejs npm nginx curl supervisor
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir -p /tools/inspector && \
    cd /tools/inspector && \
    npm install node-inspector@~0.9.0 && \
    cd -


COPY init.sh /docker/init.sh
COPY default /etc/nginx/sites-available/default
COPY supervisord.*.conf /etc/supervisor/conf.d/
COPY node_init.sh /docker/node_init.sh
RUN chmod +x /docker/*.sh
COPY . /src

CMD [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf" ]
