echo "Launching $BUILD_NAME IN AMAZON ECS"
scp -i all-stock-key-pair.pem ./docker-compose.yml ubuntu@ec2-3-121-40-225.eu-central-1.compute.amazonaws.com:.
docker container rm -f $(docker container ls -aq)
docker image rm -f $(docker image ls -aq)
docker-compose up -d
docker-compose ps -a
