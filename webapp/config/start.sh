#!/bin/sh

#####
# Postgres: wait until container is created
#
# $?                most recent foreground pipeline exit status
# > /dev/null 2>&1  get stderr while discarding stdout
#####
# set -e
# python /srv/config/database-check.py > /dev/null 2>&1
# while [[ $? != 0 ]] ; do
#     sleep 5; echo "*** Waiting for postgres container ..."
#     python /srv/config/database-check.py > /dev/null 2>&1
# done
# set +e
# set -e
until python /srv/config/database-check.py > /dev/null 2>&1 ; do
    sleep 5; echo "*** Waiting for postgres container ..."
    python /srv/config/database-check.py > /dev/null 2>&1
done
# set +e

#####
# Django setup
#####
# cd /srv/${DJANGO_PROJECT_NAME}
# export DJANGO_SETTINGS_MODULE=settings
# if [ "$PRODUCTION" == "true" ]; then
#     # Django: migrate
#     #
#     # Django will see that the tables for the initial migrations already exist
#     # and mark them as applied without running them. (Django won’t check that the
#     # table schema match your models, just that the right table names exist).
#     echo "==> Django setup, executing: migrate"
#     python ./manage.py migrate --fake

#     # Django: collectstatic
#     #
#     # This will upload the files to s3 because of django-storages-redux
#     # and the setting:
#     # STATICFILES_STORAGE = 'storages.backends.s3boto.S3BotoStorage'
#     echo "==> Django setup, executing: collectstatic"
#     python ./manage.py collectstatic --noinput -v 2
# else
#     # # Django: reset database
#     # # https://docs.djangoproject.com/en/1.9/ref/django-admin/#flush
#     # #
#     # # This will give some errors when there is no database to be flushed, but
#     # # you can ignore these messages.
#     echo "==> Django setup, executing: flush"
#     python ./manage.py syncdb --all --noinput

#     # truncate database
#     # ref: https://stackoverflow.com/questions/3076928/switching-django-project-from-sqlite3-backend-to-postgresql-failes-when-loading
#     echo "==> Truncating django content types"
#     PGPASSWORD=POSTGRES_PASSWORD
#     # echo "TRUNCATE django_content_type CASCADE;" | python ./manage.py dbshell
#     echo "DELETE from django_content_type;" | python ./manage.py dbshell

#     # # Django: migrate
#     # #
#     # # Django will see that the tables for the initial migrations already exist
#     # # and mark them as applied without running them. (Django won’t check that the
#     # # table schema match your models, just that the right table names exist).
#     echo "==> Django setup, executing: migrate"
#     python ./manage.py migrate --fake

#     # # Django: collectstatic
#     # echo "==> Django setup, executing: collectstatic"
#     # python ./manage.py collectstatic --noinput -v 2

#     # skip all that stuff up above that I don't understand
#     # and, instead, just load the data back into django's DB
#     echo "==> Django setup, executing: loaddata"
#     python ./manage.py loaddata -v 2 /srv/config/cland_dumpdata.json

# fi


#####
# Start uWSGI
#####
echo "==> Starting uWSGI ..."
/usr/local/bin/uwsgi --emperor /etc/uwsgi/django-uwsgi.ini
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
