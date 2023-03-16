FROM alpine:latest

WORKDIR /app

COPY . /app

# Give execution rights on the cron scripts
RUN chmod +x /app/cast_bot.sh
RUN chmod +x /app/log.sh
RUN chmod +x /app/run.sh

#Install Cron
RUN apk update && \
    apk add python3 py3-pip && \
    pip3 install virtualenv


RUN virtualenv venv && \
    source venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

RUN apk add --update apk-cron && rm -rf /var/cache/apk/*
RUN apk add --no-cache bash
RUN apk add --no-cache tzdata
RUN apk add --no-cache wget

# set timezone
ENV TZ="Asia/Seoul"

# install chromedriver for selenium
RUN mkdir /home/dev
RUN wget https://chromedriver.storage.googleapis.com/104.0.5112.79/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /home/dev
RUN chmod +x /home/dev/chromedriver

# Add the cron job
RUN crontab -l | { cat; echo "0 12 * * * bash /app/cast_bot.sh"; } | crontab -
RUN crontab -l | { cat; echo "0 0 * * * bash /app/log.sh"; } | crontab -

RUN crontab -l | { cat; echo "00 12 * * 3 bash /app/run.sh"; } | crontab -
RUN crontab -l | { cat; echo "00 12 * * 6 bash /app/run.sh"; } | crontab -


# Run the command on container startup
CMD ["crond", "-f"]


