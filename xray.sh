#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e7889791-5b20-4b33-8fb8-c15b4fbabf13"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

