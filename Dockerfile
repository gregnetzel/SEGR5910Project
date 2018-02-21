FROM ubuntu
ADD . /application
WORKDIR /application
RUN apt-get update && \
    apt-get install -y wget redis-server && \
	wget https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz && \
	tar -xzf webapp.tar.gz && \
	mv dist/example-webapp-linux .
CMD ["bash", "/application/initialization_script"]