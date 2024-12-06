#!/bin/sh
curl -L "http://localhost:5000/config/https://139855.nginx24zfd.xyz/link/akQcP9gJhcqCm25r?sub=3&file=https://ghp.ci/https://raw.githubusercontent.com/qifei/trygit/refs/heads/master/config_qichiyu_tun.json" -o /etc/sing-box/config.json
killall sing-box || echo "No sing-box process found."
sleep 3
sing-box run -c /etc/sing-box/config.json &