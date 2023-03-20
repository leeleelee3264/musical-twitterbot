FROM selenium/standalone-chrome

USER root
WORKDIR /app

COPY . /app

#Install Cron
RUN apt-get update -y 
RUN apt-get install -y python3 python3-pip bash tzdata wget cron && \
    pip3 install virtualenv


RUN virtualenv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt && \
    deactivate

# set timezone
ENV TZ="Asia/Seoul"

# Add the cron job
RUN crontab -l | { cat; echo "0 12 * * * bash /app/cast_bot.sh"; } | crontab -
RUN crontab -l | { cat; echo "0 0 * * * bash /app/log.sh"; } | crontab -

RUN crontab -l | { cat; echo "00 12 * * 3 bash /app/run.sh"; } | crontab -
RUN crontab -l | { cat; echo "00 12 * * 6 bash /app/run.sh"; } | crontab -


# Run the command on container startup
CMD ["cron", "-f"]


