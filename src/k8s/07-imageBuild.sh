#!/bin/bash
#打包docker镜像 (如果你的镜像仓库中心不是这个,需要修改)
echo "打包docker镜像"


########################
cd /opt/k8s/docker-k8s-demo-docker/
rm -rf *.jar 

cp /root/demo-docker-0.0.1-SNAPSHOT.jar .

docker build -f Dockerfile -t codingsoldier/demo-docker:latest .
docker tag  codingsoldier/demo-docker:latest localhost:32000/codingsoldier/demo-docker:latest
docker push localhost:32000/codingsoldier/demo-docker:latest
