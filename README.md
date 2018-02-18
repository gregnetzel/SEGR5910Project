# SEGR5910Project
docker build . -t guestbook
docker run -d -it -p  3000:3000 guestbook

docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker stop $(docker ps -q)
