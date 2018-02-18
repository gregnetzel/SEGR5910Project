FROM ubuntu

ADD . /application

RUN apt-get update && \
    apt-get install -y wget build-essential tcl && \
	cd application && \
	wget https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz && \
	tar -xzf webapp.tar.gz && \
	cd .. && \
	wget http://download.redis.io/redis-stable.tar.gz && \
	tar -xzf redis-stable.tar.gz && \
	cd redis-stable && \
	make && \
	#make test && \
	make install && \
	mkdir /etc/redis && \
	cp /redis-stable/redis.conf /etc/redis

EXPOSE 3000 3000

CMD ["bash", "/application/initialization_script"]
