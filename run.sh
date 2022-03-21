#!/bin/bash

set -e
echo "data_portrange = ${DATA_PORT_RANGE}" > /etc/sane.d/saned.conf
echo $SANED_ACL >> /etc/sane.d/saned.conf
inetd -f -e
