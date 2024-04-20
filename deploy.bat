echo off
color 0A
set RESSOURCE_PATH=.
set CONTAINER_NAME=webapp
set PORT=80
echo (c) Created by Henry Letellier
docker stop %CONTAINER_NAME%
docker rm %CONTAINER_NAME%
docker rmi %CONTAINER_NAME%
docker build -t %CONTAINER_NAME% .
docker run -d -p %PORT%:%PORT% -v %RESSOURCE_PATH%:/usr/share/nginx/html:ro --name %CONTAINER_NAME% %CONTAINER_NAME%
start http://localhost:%PORT%
