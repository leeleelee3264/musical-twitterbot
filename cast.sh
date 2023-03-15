#! /bin/bash

cd /opt/twitter_project

source twitter/bin/activate

python3 crawl/dynamic/musical/additional_info_parser.py

deactivate
