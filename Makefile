run:
	python manage.py collectstatic --noinput
	python manage.py migrate
	gunicorn oidc_server.wsgi:application -w 2 -b :8000

run-dev:
	python manage.py runserver 0.0.0.0:8000

init:
	python manage.py creatersakey
	python manage.py createsuperuser

init-pre-commit:
	pre-commit install
	pre-commit run --all-files

black:
	black ./

isort:
	isort ./

build_docker_image:
	docker build -t vicalloy/oidc-server .

run_docker_container:
	docker run -d -p 8000:8000 --rm --name oidc-server vicalloy/oidc-server

docker-pull:
	docker pull vicalloy/oidc-server
