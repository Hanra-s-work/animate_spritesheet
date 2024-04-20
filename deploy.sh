PORT=80
RESSOURCE_PATH=.
CONTAINER_NAME=webapp
echo "(c) Created by Henry Letellier"
sudo docker stop $CONTAINER_NAME
sudo docker rm $CONTAINER_NAME
sudo docker rmi $CONTAINER_NAME
sudo docker build -t $CONTAINER_NAME
sudo docker run -d $PORT:$PORT -v $RESSOURCE_PATH:/usr/share/nginx/html:ro --name $CONTAINER_NAME $CONTAINER_NAME
# start http://localhost:$PORT
