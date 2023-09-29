# is373DockerTown
## Docker Links

- https://docs.docker.com/get-started/

- 
## Build the image and run
1. docker build -t kaw393939/python312 . <- builds image called "kaw393939/python312"
   
2. docker run -e QR_CODE_DEFAULT_URL=www.yahoo.com -e QR_CODE_IMAGE_DIRECTORY=images -v $(pwd):/home/ qrcode

## Docker Commands
- docker ps - Lists Running Containers
- docker Stop - Stops and removes the container data
- docker kill - stops but doesn't remove container data and you don't want do this because it leave trash in the system
- docker pull <SOME IMAGE NAME FROM DOCKER HUB>  - downloads an image
- docker images <- listing the images already downloaded
- docker image rm <image id>
- docker run -it <image name> <- this runs the image in interactive terminal mode
- docker run options:
    - --name <Some name for container>
    - -dp  <external port: internal port>  < starting a server and forward the external to the internal port in dockertown
    Examples
        docker run -dp 8080:80 httpd
        docker run --name -dp 8080 httpd
        docker run -it ubuntu
- docker stats <- shows you live running containers and associated info
- docker rm <containername> removes old container with a name or id 
- docker exec -it <containerid or name> bash   <-log into a running container
