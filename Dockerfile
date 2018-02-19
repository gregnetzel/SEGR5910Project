FROM ubuntu

ADD . /application

RUN apt-get update && \
    apt-get install -y wget && \
	cd application && \
	wget https://s3-us-west-2.amazonaws.com/techops-interview-webapp/webapp.tar.gz && \
	tar -xzf webapp.tar.gz && \
	cd ..

EXPOSE 3000 3000

CMD ["bash", "/application/initialization_script"]