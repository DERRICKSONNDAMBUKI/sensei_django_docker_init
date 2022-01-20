# pull base image
FROM python:3.10

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1

#set work directory
WORKDIR /init_project

# install dependencies
COPY Pipfile Pipfile.lock /init_project/
RUN pip install pipenv && pipenv install --system

# copy project
COPY . /init_project/