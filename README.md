
# IS373DockerTown

## Docker Commands
- docker PS - lists Running Containers
- docker Stop - Stops and removes the container data
- docker kill - stops but doesn't remove container data and you don't want to do this because it leaves trash in the system
- docker pull - SOME IMAGE NAME FROM DOCKER HUB - downloads an image
- docker images - Listing the images already downloaded
- docker image rm - <image id>
- docker run -it - <image name> <- this runs the image in interactive terminal mode
- docker run options:
    -  -- name <Some name for container>
    - -dp <external port: internal port> < starting a server and forward the external to the internal port in dockertown>
    Examples
        docker run -dp 8080:80 httpd
        docker run --name -dp 8080 httpd
        docker run -it ubuntu
- docker stats <- shows you live running containers and associated info
- docker rm <containername> removes old container with a name
- docker exec -it <containerid or name> bash <-log into a running container>
