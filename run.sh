# gunicorn --reload --bind 0.0.0.0:8000 --workers 4 hmnmp.wsgi:application
DEBUG=True python manage.py runserver
