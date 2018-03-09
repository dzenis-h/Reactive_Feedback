#!/bin/bash
# make sure you have execute permissions:
# cd /path/to/project
# chmod +x ./sendgrid_webhook.sh
# to run, type ./sendgrid_webhook.sh in the terminal

# Additional script in case 'Local Tunnel' is crashing.

# You need this for your local development, remember ?! :)

function localtunnel {
lt -s lairjgliargli --port 5000
}

until localtunnel; do
echo "localtunnel server crashed"
sleep 2
done
