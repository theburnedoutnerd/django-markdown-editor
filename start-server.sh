if [ -n "amcge" ] && [ -n "devpass9" ] ; then
    (cd martor_demo; python manage.py createsuperuser --no-input)
fi
(cd martor_demo; gunicorn martor_demo.wsgi --user www-data --bind 0.0.0.0:8010 --workers 3) &
nginx -g "daemon off;"