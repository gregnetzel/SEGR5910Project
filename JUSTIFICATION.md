# SEGR5910Project JUSTIFICATION

I originally chose to use docker to implement my solution. After some trouble
installing redis a more difficult way I found a ready made docker container 
for redis. I was then asked by a friend at dinner 'why would you try and install 
something like that in docker, that defeats the point' and he told me about 
docker-compose. I found a docker-compose tutorial that almost seemed to work 
except that the webapp would only talk to local host ports and not to other 
containers. I went back to standard docker and installing redis on the same 
container. It worked though would not scale well and when the code was fixed I 
redid the docker-compose portion. The only big problem after that was figuring 
out how to make master and slave redis servers. Once that was fixed the guestbook
application was working well.

An improvement I saw and looked into would be to use docker swarm rather than 
docker compose. With docker swarm I would be able to make multiple containers 
for the server or redis if necessary. I was also told that kubernetes scales 
better than docker swarm so it would be interesting to add the ability to 
deploy with that instead.
