#!/bin/sh



git clone "https://github.com/spiros-k/express_app.git"

cd "express_app"

docker build -t "express-app" .

docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"

docker tag express-app spiroskonstantinidis/express-app:v3

docker push "spiroskonstantinidis/express-app:v3"
