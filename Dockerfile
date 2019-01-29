# base image
FROM tiangolo/uwsgi-nginx:python3.6

ARG REDIS_URL=redis://redis:6379/0
ENV REDIS_URL=${REDIS_URL}

# set working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# add requirements (to leverage Docker cache)
ADD ./requirements.txt /usr/src/app/requirements.txt

# install requirements
RUN pip install --upgrade pip && pip install -r requirements.txt

CMD [ "python", "manage.py run -h 0.0.0.0" ]
