#!/bin/bash

echo ${REPO}/${REPO_IMAGE}:${APP_VERSION}${GO_PIPELINE_COUNTER}

docker build app/ -f app/Dockerfile -t ${REPO}/${REPO_IMAGE}:${APP_VERSION}${GO_PIPELINE_COUNTER}

docker push ${REPO}/${REPO_IMAGE}:${APP_VERSION}${GO_PIPELINE_COUNTER}
