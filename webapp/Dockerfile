FROM python:2-alpine

# Add additional libraries to deal with this issue caused by using alpine-python
#     Building lxml version 2.1.5.
#   NOTE: Trying to build without Cython, pre-generated 'src/lxml/lxml.etree.c' needs to be available.
#   ERROR: /bin/sh: xslt-config: not found
#
#    ** make sure the development packages of libxml2 and libxslt are installed **
RUN apk add --update --no-cache g++ gcc libxml2-dev libxslt-dev

# Get Pillow working on python-alpine
# ref: https://github.com/python-pillow/Pillow/blob/c05099f45c0d94a2a98c3609a96bdb6cf7446627/depends/alpine_Dockerfile
RUN apk --update --no-cache add \
    jpeg-dev \
    zlib-dev \
    freetype-dev \
    lcms2-dev \
    openjpeg-dev \
    tiff-dev \
    tk-dev \
    tcl-dev \
    # added for debugging
    bash nano
    # might be needed for loading data
    #postgresql-client

# Get psycopg2 running on python-alpine
# ref: https://stackoverflow.com/questions/41574928/psycopg2-installation-for-python2-7-alpine-in-docker
RUN apk --update --no-cache add \
    python-dev \
    musl-dev \
    postgresql-dev

# trying to get uwsgi running on python-alpine
RUN apk --update --no-cache add \
    build-base \
    linux-headers \
    pcre-dev

# Add code
# mount code as volume on container
#ADD ./starter /srv/$DJANGO_PROJECT_NAME

# Install application requirements
ADD ./config/requirements.txt /srv/$DJANGO_PROJECT_NAME/
RUN pip install -r /srv/$DJANGO_PROJECT_NAME/requirements.txt

# Add start script
ADD ./config/start.sh /

# Add uWSGI config
ADD ./config/django-uwsgi.ini /etc/uwsgi/django-uwsgi.ini

# Add database check script
ADD ./config/database-check.py /srv/config/database-check.py

# Add database dump file
ADD ./config/cland_dumpdata.json /srv/config/cland_dumpdata.json

# Create django user, will own the Django app
#RUN adduser --no-create-home --disabled-login --group --system django
# changes for alpine version of linux
RUN addgroup -S django && \
    adduser -H -D -S -G django django
RUN chown -R django:django /srv/$DJANGO_PROJECT_NAME

# Execute start script
CMD ["./start.sh"]
