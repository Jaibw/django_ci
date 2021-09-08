#!/bin/sh

ssh -i ~/auth/devops_demo.pem ubuntu@ec2-18-230-25-155.sa-east-1.compute.amazonaws.com <<EOF
  cd django_ci
  git pull
  source ../env/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djangoci
  exit
EOF
