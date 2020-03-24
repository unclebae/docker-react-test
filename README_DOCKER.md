# Docker for frontend

## .dockerignore

## add Volume for dev

docker run -p 3000:3000 -v /app/node_moeules -v $(pwd):/app <image_id>

ex) 

docker run -it -p 3000:3000 -v /app/node_modules -v $(pwd):/app d47ef3f1ffc2

for window:

docker run -p 3000:3000 -v /app/node_modules -v pwd:/app CONTAINER_ID

docker run -p 3000:3000 -v /app/node_modules -v ${pwd}:/app CONTAINER_ID


## docker-compose up 에서 오류

web: 
    tty: true
    stdin_open: true

https://stackoverflow.com/questions/36249744/interactive-shell-using-docker-compose

## docker test and build

docker run -it docker_id npm run test

1. docker-compose up
2. docker ps and copy container_id
3. docker exec -it <container_id> npm run test


## docker attach

docker attach <container_id> 컨테이너와 연동하는 방법. 

이때 메인 컨테이너 인스턴스에만 연결된다. 

## Multistep docker build

