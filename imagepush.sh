#!/bin/bash

aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com

docker tag order-docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag store-docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag user-docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker tag frontend-docker:latest 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:latest

docker push 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:order-docker

docker push 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:store-docker

docker push 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:user-docker

docker push 480936841767.dkr.ecr.ap-northeast-2.amazonaws.com/interface_app:frontend-docker

