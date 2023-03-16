#! /bin/bash

cd /app
source venv/bin/activate
export PYTHONPATH="${PYTHONPATH}:$(pwd)"

python3 crawl/musical.py

deactivate
