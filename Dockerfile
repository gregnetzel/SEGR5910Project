FROM ubuntu
ADD . /application
WORKDIR /application
RUN apt-get update && \
    apt-get install -y wget && \
	wget https://raw.githubusercontent.com/michaeljon/SU_SEGR_5910_18WQ/master/webapp.tar.gz && \
	tar -xzf webapp.tar.gz && \
	rm webapp.tar.gz && \
	mv webapp/dist/example-webapp-linux . && \
	mv webapp/public . && \
	rm -rf webapp
CMD ["bash", "/application/initialization_script"]