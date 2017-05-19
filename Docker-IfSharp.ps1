#Move to working directory where docker file placed
cd C:\Users\deton\Development\docker\IfSharp
docker build -t ifsharp:3.0.0-alpha .

#Rename docker image to push it to docker hub (xxx is image id)
#docker tag xxx narachannel/ifsharp

#Log in to docker hub
docker login

#push to docker hub
docker push narachannel/ifsharp

docker run -i -d -v C:/Users/deton/Development/docker/IfSharp/notebook:/notebooks -p 8888:8888 narachannel/ifsharp:latest

#Start container
#docker start -i xxxx