#!/bin/bash
echo "* * * * * /usr/local/bin/arcticstatus > /var/www/html/arcticstatus.json >/dev/null 2>&1" >> /var/spool/cron/crontabs/root

sudo crontab -l
sudo crontab -e