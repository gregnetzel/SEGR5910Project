# SEGR5910Project

To run the guestbook applications all that should be needed is to type
"docker-compose up -d"
while in the directory with the docker-compose.yml file.

If you want to take it down the command is
"docker-compose down".

To change the port of the application:
In docker-compose.yml change the first port in the ports (line 6) section 
of the web service to the desired port.

To change the download location of the webserver files:
In Dockerfile change the link on line 6 to the new location.
