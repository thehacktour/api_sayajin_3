FROM python:2.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD poetry.lock pyproject.toml
RUN poetry install
ADD . /code/