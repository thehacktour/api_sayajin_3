FROM python:3
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY poetry.lock pyproject.toml
RUN poetry install
COPY . /app/