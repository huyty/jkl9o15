#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b0da72fa-5f3b-4fa6-9533-9899122c45b1"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

