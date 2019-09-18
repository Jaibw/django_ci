#!/bin/sh

ssh -i ~/auth/key.pem ubuntu@13.233.117.16 <<EOF
  cd devops_django
  git pull
  source ../env/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart devopsdjango
  exit
EOF