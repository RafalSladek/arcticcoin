cat << EOF >> /usr/lib/bin/arcticstatus
#!/bin/bash
COINUSER=arcticcoin
PUBLIC_IP=$(curl -s ipecho.net/plain)
sudo -u $COINUSER -H sh -c "echo '{ \"timestamp\": \"`date`\", \"details\": ['; arcticcoin-cli goldminenode status; echo ','; arcticcoin-cli getinfo; echo ','; arcticcoin-cli goldminenode list full $PUBLIC_IP; echo ']}'"
EOF

chmod +x /usr/lib/bin/arcticstatus

arcticstatus