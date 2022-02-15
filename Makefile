run:
	python manage.py runserver 0.0.0.0:8000

init:
	python manage.py migrate
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
	docker build -t oidc-server .

run_docker_container:
	docker run -d -p 8000:8000 --rm --name oidc-server oidc-server