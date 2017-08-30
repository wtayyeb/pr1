#!/bin/bash

cd /home/user1/pr1-venv/pr1
git pull origin master
/home/user1/pr1-venv/bin/pip install -U -r /home/user1/pr1-venv/pr1/requirement.txt
supervisorctl stop pr1-wsgi
supervisorctl start pr1-wsgi
