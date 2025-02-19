#!/usr/bin/bash
export NEZHA_SERVER="nazha.neihuang.cf"
export NEZHA_PORT="2089"  #当端口设置为443时，自动开启TLS,无需设置
export NEZHA_KEY="ohFNDJ23HEHv1ZJY3F"

chmod +x server
if [ "$NEZHA_PORT" = "443" ]; then
  NEZHA_TLS="--tls"
else
  NEZHA_TLS=""
fi
nohup ./server -s ${NEZHA_SERVER}:${NEZHA_PORT} -p ${NEZHA_KEY} ${NEZHA_TLS} > /dev/null 2>&1 &

tail -f /dev/null
