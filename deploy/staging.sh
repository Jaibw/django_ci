#!/bin/sh

# ssh -i ~/auth/key.pem ubuntu@13.233.117.16 <<EOF
#   cd django_ci
#   git pull
#   source ../env/bin/activate
#   pip install -r requirements.txt
#   ./manage.py migrate
#   sudo supervisorctl restart djangoci
#   exit
# EOF
