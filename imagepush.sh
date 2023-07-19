#!/bin/bash

aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com

docker tag order_docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag store_docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag user_docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag frontend_docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag traefik:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag traefik/whoami:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest