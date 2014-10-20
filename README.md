docker-repcached
================


Base docker image to run a Repcached server


Usage
-----

To create the image `yrobla/repcached`, execute the following command on the yrobla-memcached folder:

	docker build -t yrobla/memcached .

To run the image and bind to port 11211:

	docker run -d -p 11211:11211 yrobla/memcached
