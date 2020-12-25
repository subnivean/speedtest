#!/bin/bash

while true; do echo -n "$(date --rfc-3339=seconds) " >>output/speed.out; speedtest-cli --simple --no-upload >>output/speed.out; sleep 1200; done
