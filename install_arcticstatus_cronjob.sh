#!/bin/bash
echo "* * * * * /usr/local/bin/arcticstatus > /var/www/html/arcticstatus.json" >> /var/spool/cron/crontabs/root

sudo crontab -l