#!/bin/sh

# Make migrations and migrate the database.
echo "Making migrations and migrating the database. "
rm -fr db.sqlite3 
rm -fr djangoapp/__init__.py
rm -fr djangoapp/__pycache__
python manage.py makemigrations --noinput
python manage.py migrate --run-syncdb --noinput  
python manage.py collectstatic --noinput
exec "$@"