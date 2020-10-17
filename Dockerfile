# Docker file for Image Deployment using python image
FROM python:3.8
LABEL Author="Gustavo Grauzely"
LABEL version="0.1"
ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "app.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG True
RUN mkdir /app-flask
WORKDIR /app-flask
COPY . /app-flask/
# RUN clause performs upgrade of pip and install the Flask App dependencies
RUN pip install --upgrade pip && \
    pip install pipenv && \
    pip install Flask && pip install Jinja2 && pip install requests
ADD . /app-flask
EXPOSE 5000
CMD flask run --host=0.0.0.0