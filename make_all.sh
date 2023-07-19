#!/bin/bash

chmod +x ~/environment/interface_app/make_all.sh

# frontend 디렉터리로 이동하여 make 실행
cd ~/environment/interface_app/frontend
make

# order 디렉터리로 이동하여 make 실행
cd ~/environment/interface_app/order
make

# store 디렉터리로 이동하여 make 실행
cd ~/environment/interface_app/store
make

# user 디렉터리로 이동하여 make 실행
cd ~/environment/interface_app/user
make

docker build -t traefik

docker build -t traefik/whoami