#1st step to build a container for nginex having a tickting website
FROM nginx:1.29.1-alpine-slim

#What commands need to be RUN while starting the container

RUN apk update
RUN mkdir /tickting-web

#Working dirictory will be used for this container

WORKDIR /tickting-web

#Copying all the files we have in the the container

COPY . /tickting-web
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html

#instating an enviroment


#open Ports

EXPOSE 80

#Label some text 

LABEL maintainer="Karim.rushdy4@gmail.com"

#CMD line

CMD ["nginx", "-g", "daemon off;"]

