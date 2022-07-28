#! /bin/bash
apt update -y
apt install docker.io -y
service docker start
usermod -a -G docker ec2-user
docker run -p 80:80 -d --name demo-machine-2 eramireziriarte/nginx-angular:1
