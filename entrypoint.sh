#!/bin/sh

# Replace the content of the index.html file with the environment variable value
echo "<html><body><h1>${MY_ENV_VAR}</h1></body></html>" > /usr/share/nginx/html/index.html

# Start Nginx
exec "$@"
