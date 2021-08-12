run:
	python manage.py runserver 0:8000

reqs:
	pip install -r requirements.txts

migrate:
	#python manage.py migrate
	python manage.py makemigrations polls