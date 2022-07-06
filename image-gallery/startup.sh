docker run \
       -v /root/cloud_computing/secrets:/secrets\
       -e IG_DATABASE=image_gallery\
       -e IG_PASSWD_FILE=/secrets/pg_pass\
       -e PG_HOST=image-gallery-docker.c3dkgwsygvad.us-east-1.rds.amazonaws.com\
       -e IG_USER=image_gallery\
       -e S3_IMAGE_BUCKET=python-image-gallery-bucket\
       -e FLASK_SESSION_SECRET=b'safsf987s9f7w9#$*bygh$@'\
       -e IG_PORT=5432\
       -p 8888:5555 \
       uwsgi-prod
