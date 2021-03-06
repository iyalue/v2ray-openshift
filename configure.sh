#!/bin/sh
# V2Ray new configuration
# Run V2Ray
cat <<-EOF > /etc/v2ray/config.json
{
  "inbounds": [
  {
    "port": 8081,
    "protocol": "vmess",
    "settings": {
      "clients": [
        {
          "id": "ba651c8c-cb35-4c46-bf6c-f90bd6f094e3",
          "alterId": 64
        }
      ]
    },
    "streamSettings": {
      "network": "ws"
    }
  }
  ],
  "outbounds": [
  {
    "protocol": "freedom",
    "settings": {}
  }
  ]
}
EOF
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
