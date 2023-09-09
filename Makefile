setup: venv/requirements.txt

venv:
	python -m venv venv

venv/requirements.txt: venv requirements.txt
	venv/bin/pip install -r requirements.txt
	cp requirements.txt venv/

manage.py: setup
	venv/bin/django-admin startproject demo .

server: manage.py
	venv/bin/python manage.py runserver 0.0.0.0:8000
