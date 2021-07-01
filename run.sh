docker pull dngwoodo/codesoom-cicd:${hash}
docker stop server
docker tag dngwoodo/codesoom-cicd:${hash} codesoom-cicd
docker run --rm -d -p 3000:3000 --name server codesoom-cicd

