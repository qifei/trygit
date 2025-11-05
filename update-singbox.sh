#!/bin/sh
curl -L "http://localhost:5000/config/https://shadowsocks.v2ray.ssr/link/aaaaaaaaaa?sub=3&file=https://ghp.ci/https://raw.githubusercontent.com/qifei/trygit/refs/heads/master/1.11.x/config_tun.json" -o /etc/sing-box/config.json
killall sing-box || echo "No sing-box process found."
sleep 3
sing-box run -c /etc/sing-box/config.json &