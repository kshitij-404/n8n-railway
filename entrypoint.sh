#!/bin/sh

# Fix permissions as root
mkdir -p /home/node/.n8n
chown -R 1000:1000 /home/node/.n8n
chmod -R 777 /home/node/.n8n

# Drop to node user and start n8n
exec su node -s /bin/sh -c "n8n start"
