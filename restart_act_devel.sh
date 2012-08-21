#!/bin/sh

# perlbrew
source /data/tools/perl5/etc/bashrc

# matando processo na marreta
/bin/fuser 8092/tcp -k

# apagando cache
rm -rf /data/sites/yapcbrasil.org.br/Act-devel/var

# iniciando act

ACTHOME=/data/sites/yapcbrasil.org.br/Act-github-devel \
    plackup -I/data/sites/yapcbrasil.org.br/Act-github-devel/lib  \
    -s Starman \
    --daemonize \
    --port 8092 \
    --host 10.0.0.6 \
    --workers 3 \
    --user=www-data \
    /data/sites/yapcbrasil.org.br/Act-github-devel/production.psgi

#--error-log /var/log/starman/yapcbrasil_error_log.log \
 
