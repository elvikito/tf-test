#! /bin/bash
sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo docker run -p 80:80 -d --name demo-machine-2 eramireziriarte/nginx-angular:1