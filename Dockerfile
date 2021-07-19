FROM python:3.9

WORKDIR /app




COPY pyproject.toml poetry.lock /app/

RUN poetry install

COPY . .