#! /bin/bash

cd /root/twitter_project

source twitter/bin/activate

python3 crawl/musical.py

deactivate
