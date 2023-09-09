setup:
	pip install -r requirements.txt

manage.py: setup
	django-admin startproject demo .

server: manage.py
	python manage.py runserver 0.0.0.0:8000
