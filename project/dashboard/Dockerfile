FROM python:3.7.0-alpine

ARG REDIS_URL=redis://redis:6379/0
ENV REDIS_URL=${REDIS_URL}

RUN pip install --upgrade pip && pip install rq-dashboard

EXPOSE 9181

CMD [ "sh", "-c", "rq-dashboard -u ${REDIS_URL}" ]
