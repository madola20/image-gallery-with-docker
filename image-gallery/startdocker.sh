#!/bin/bash

docker run -v /path/to/graders/secretdir:/secretdir \
       -e IG_PASSWD_FILE=/secretdir/file \
       -e IG_DATABASE=some-database-that-exists \
       -p 8888:5555 \
       
       flask-prod 
