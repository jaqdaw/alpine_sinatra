# alpine_sinatra
Docker Container - Based on Alpine:latest with Ruby, json & sinatra.

To build your Ruby app using Dockerfile, make sure you have the "project" directory in the same directory as Dockerfile.



To test, run ...

docker run -d -p 80:4567 --name sinatra jaqdaw/sinatra

Provided your host has no local web server running then http://hostname should return "Hello World!".

https://hub.docker.com/r/jaqdaw/sinatra/
