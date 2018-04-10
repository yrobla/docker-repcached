docker-repcached
================


Base docker image to run a Repcached server


Usage
-----

To create the image `yrobla/repcached`, execute the following command on the yrobla-memcached folder:

	docker build -t yrobla/memcached .

To run the image and bind to port 11211:

	docker run -d -p 11211:11211 yrobla/memcached


Configuration
-----

The configuration of memcache can be altered using the following environment variables

- MEMCACHED_SLAVE_IP - IP address of Repcached slave. Default 127.0.0.1
- MEMCACHED_TCP_PORT - TCP port to bind. Default 11211
- MEMCACHED_UDP_PORT - UDP port to bind. Default 11211
- MEMCACHED_MEMORY - Amount of memory in MB to allow. Default 64
- MEMCACHED_MAX_CONN - Max number of client connections. Default 1024
- MEMCACHED_THREADS - Number of handler threads. Default 4
- MEMCACHED_PID_FILE - PID file. Default /var/run/memcachedrep.pid
- MEMCACHED_VERBOSE - Log verbosity setting. Default -vvvv
- MEMCACHED_ANON - If set to 1 or 'true', allow anonymous memcache access (don't create admin user). Default false
- MEMCACHED_PASS - The password to assign for memcache access. Default randomly assigned (printed in run log)
- MEMCACHED_USER - The user to assign for memcache access. Default 'admin'

Example

    docker run -d -e MEMCACHED_SLAVE_IP=172.10.28.220 -p 11211:11211 yrobla/memcached