#!/bin/sh

# perlbrew
source /data/tools/perl5/etc/bashrc

# matando processo na marreta
/bin/fuser 8091/tcp -k

# iniciando act
ACTHOME=/data/sites/yapcbrasil.org.br/Act plackup -I /data/sites/yapcbrasil.org.br/Act/lib  -s Starman --daemonize --port 8091 --host 10.0.0.6 --workers 3 --user=www-data /data/sites/yapcbrasil.org.br/Act/production.psgi


