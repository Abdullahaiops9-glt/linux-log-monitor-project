#!/bin/bash
journalctl -p err -n 20 > /tmp/errors.log

if [ -s /tmp/errors.log ]; then
    echo "ERROR detected on server" >> /tmp/alert.log
fi
