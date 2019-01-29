RQ_TEST_VERSION=0.0.1

docker build -t discovervlad/rq-test:${RQ_TEST_VERSION} .
docker tag discovervlad/rq-test:${RQ_TEST_VERSION} discovervlad/rq-worker:${RQ_TEST_VERSION}
cd ./project/dashboard
docker build -t discovervlad/rq-dashboard:${RQ_TEST_VERSION} .
cd -

docker push discovervlad/rq-test:${RQ_TEST_VERSION}
docker push discovervlad/rq-worker:${RQ_TEST_VERSION}
docker push discovervlad/rq-dashboard:${RQ_TEST_VERSION}
