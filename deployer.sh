#!/bin/bash

cd /home/sistemas/projects/ticsonomics/Deployment
docker compose -f docker-compose-acqui.yml up -d

sleep 60

python3 pro2.py


git add pdfs_output/*

git commit -m "$(date +"%Y-%m-%d %H:%M:%S")"

git push
docker-compose -f docker-compose-acqui.yml down

