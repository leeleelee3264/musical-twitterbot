FROM python:3.6.1-alpine

WORKDIR /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

# Give execution rights on the cron scripts
RUN chmod 0644 /app/cast_bot.sh
RUN chmod 0644 /app/log.sh
RUN chmod 0644 /app/run.sh
RUN chmod 0644 /app/test.sh

#Install Cron
RUN apk update
RUN apk add --update apk-cron && rm -rf /var/cache/apk/*
RUN apk add --no-cache bash
RUN apk add --no-cache tzdata

ENV TZ="Asia/Seoul"

# Add the cron job
RUN crontab -l | { cat; echo "0 12 * * * bash /app/cast_bot.sh"; } | crontab -
RUN crontab -l | { cat; echo "0 0 * * * bash /app/log.sh"; } | crontab -

RUN crontab -l | { cat; echo "00 12 * * 3 bash /app/run.sh"; } | crontab -
RUN crontab -l | { cat; echo "00 12 * * 6 bash /app/run.sh"; } | crontab -

RUN crontab -l | { cat; echo "* * * * * bash /app/test.sh"; } | crontab -

# Run the command on container startup
CMD ["crond", "-f"]

