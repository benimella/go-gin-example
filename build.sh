#!/usr/bin/env bash

build() {
  appName="/home/zhangxihao/go-project/go-gin-example"
  hostPort=8000
  containerPort=8080
  imageName="go-gin-test1:latest"
  containerName="test1"
  # 打包成镜像
  docker build -t ${imageName} ${appName}
  docker run --name=${containerName} -d -p ${hostPort}:${containerPort} ${imageName}
  sleep 2s
  curl localhost:${hostPort}
  echo -e "\n"
  echo -e "go-gin-example project is running\n"
}

build