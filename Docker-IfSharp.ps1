#Move to working directory where docker file placed
cd C:\Users\deton\Development\docker\IfSharp
docker build -t ifsharp:3.0.0-alpha .

#Rename docker image
#docker tag xxx ifsharp

docker login

#push to docker hub
docker push 