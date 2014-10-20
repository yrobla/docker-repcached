#!/bin/bash

#create admin account to memcached using SASL
if [ ! -f /.memcached_admin_created ]; then
	/create_memcached_admin_user.sh
fi

memcached -u root -vvvv -l 0.0.0.0 -m 64 -P /var/run/memcachedrep.pid -x 127.0.0.1
