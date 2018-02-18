FROM ubuntu

ADD . /application

RUN apt-get update && \
    apt-get install -y wget && \
	cd application && \
	wget https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz && \
	tar -xzf webapp.tar.gz && \
	mv dist/example-webapp-linux .

CMD ["/application/example-webapp-linux"]
