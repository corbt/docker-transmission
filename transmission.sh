#!/bin/bash

exec /sbin/setuser nobody /usr/bin/transmission-daemon -f --config-dir /config --log-info
