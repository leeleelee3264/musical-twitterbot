#! /bin/bash
# add comment to test user ipad has sudo permission

cd /opt/twitter_project

source twitter/bin/activate

python3 crawl/schedule.py

deactivate
