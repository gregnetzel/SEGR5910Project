FROM ubuntu

ADD . /application

WORKDIR /application

RUN apt-get update && \
    apt-get install -y wget && \
	wget https://github.com/michaeljon/SU_SEGR_5910_18WQ/blob/master/webapp.tar.gz && \
	tar -xzf webapp.tar.gz && \
	mv dist/example-webapp-linux .

CMD ["bash", "/application/initialization_script"]
