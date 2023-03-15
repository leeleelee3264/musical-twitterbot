FROM ubuntu:latest

# Add the script to the Docker Image
#ADD cast_bot.sh /root/cast_bot.sh
#ADD log.sh /root/log.sh
#ADD run.sh /root/run.sh

# Give execution rights on the cron scripts
RUN chmod 0644 /root/musical-twitterbot/cast_bot.sh
RUN chmod 0644 /root/musical-twitterbot/log.sh
RUN chmod 0644 /root/musical-twitterbot/run.sh

#Install Cron
RUN apt-get update
RUN apt-get -y install cron

# Add the cron job
RUN crontab -l | { cat; echo "0 12 * * * bash /root/musical-twitterbot/cast_bot.sh"; } | crontab -
RUN crontab -l | { cat; echo "0 0 * * * bash /root/musical-twitterbot/log.sh"; } | crontab -

RUN crontab -l | { cat; echo "00 12 * * 3 bash /root/musical-twitterbot/run.sh"; } | crontab -
RUN crontab -l | { cat; echo "00 12 * * 6 bash /root/musical-twitterbot/run.sh"; } | crontab -

# Run the command on container startup
CMD cron

