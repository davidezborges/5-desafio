#!/bin/bash
docker build --build-arg SECRET_KEY='5vUCOVMkF2JNhH2CmzY4BnhDiiUtv+reNq2wwxbw31E=' --build-arg DB_NAME=craftek --build-arg DB_ENGINE=some-db-engine --build-arg DB_USER=craftech --build-arg DB_PASS=craftech --build-arg DB_HOST=http://localhost --build-arg DB_PORT=5432 .
