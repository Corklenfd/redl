#!/bin/sh
if [ ! -f UUID ]; then
  UUID="afc0e738-f128-4294-a427-4933e9aa2734"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

