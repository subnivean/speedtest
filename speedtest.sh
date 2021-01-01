#!/bin/bash

# Only check when nobody's usually awake.
STARTHOUR=2
ENDHOUR=4

while true
do
    HOUR=$(date "+%H")
    if (($HOUR >= $STARTHOUR && $HOUR <= $ENDHOUR))
    then
        echo -n "$(date --rfc-3339=seconds) " >> output/speed.out
        speedtest-cli --simple >> output/speed.out
    fi
    sleep 1200
done
