FROM python:3.8-slim-buster

WORKDIR /app

RUN pip install poetry

COPY pyproject.toml poetry.lock ./

RUN poetry config virtualenvs.create false && poetry install

CMD [ "python3","manage.py","runserver" ]