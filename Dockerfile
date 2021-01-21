FROM python:3.7-slim

ENV APP_DIR /sitewise_metadata_export

RUN mkdir -p ${APP_DIR}

WORKDIR ${APP_DIR}

COPY ./requirements.txt ${APP_DIR}
RUN pip install -r requirements.txt

COPY ./model ${APP_DIR}/model
COPY ./docker-entrypoint.sh ${APP_DIR}/docker-entrypoint.sh

ENTRYPOINT ${APP_DIR}/docker-entrypoint.sh
