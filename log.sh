#! /bin/bash

cd /opt/twitter_project

source twitter/bin/activate


# crawl main first
python3 crawl/dynamic/musical/main_info_parser.py

# crawl casting
python3 crawl/dynamic/musical/additional_info_parser.py

deactivate
