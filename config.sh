#!/bin/bash
CONFIG="/config"

if [[ ! -f $CONFIG/settings.json ]]; then
  cp /tmp/settings.json $CONFIG/
fi

if [[ -n ${PASSWORD} ]]; then
  sed -e "s#\(.*\"rpc-password\":\).*#\1 \"${PASSWORD}\",#g" $CONFIG/settings.json
fi

if [[ -n ${USERNAME} ]]; then
  sed -e "s#\(.*\"rpc-username\":\).*#\1 \"${USERNAME}\",#g" $CONFIG/settings.json
fi