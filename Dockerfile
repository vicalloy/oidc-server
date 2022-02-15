FROM python:3.8

RUN apt-get update && apt-get install -y \
		pkg-config \
		--no-install-recommends

RUN pip install --upgrade pip setuptools pipenv gunicorn

RUN mkdir /app
WORKDIR /app

COPY ./ ./
RUN pipenv install -d --skip-lock --system

EXPOSE 8000
CMD ["make", "run"]
