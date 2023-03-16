#! /bin/bash
# add comment to test user ipad has sudo permission

cd /app

source venv/bin/activate
export PYTHONPATH="${PYTHONPATH}:$(pwd)"

python3 crawl/schedule.py

deactivate 
