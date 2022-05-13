#!/usr/bin/env bash
mlflow server --backend-store-uri mysql+pymysql://${MYSQL_USER}:${MYSQL_PASSWORD}@db:3306/${MYSQL_DATABASE} --host 0.0.0.0 --default-artifact-root /mnt/data
