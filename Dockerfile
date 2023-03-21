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
RUN crontab -l | { cat; echo "0 12 * * * /app/cast_bot.sh >> /var/log/cron.log 2>&1"; } | crontab -
RUN crontab -l | { cat; echo "0 0 * * * /app/log.sh >> /var/log/cron.log 2>&1"; } | crontab -

RUN crontab -l | { cat; echo "00 12 * * 3 /app/run.sh >> /var/log/cron.log 2>&1"; } | crontab -
RUN crontab -l | { cat; echo "00 12 * * 6 /app/run.sh >> /var/log/cron.log 2>&1"; } | crontab -


# Run the command on container startup
CMD ["cron", "-f"]


