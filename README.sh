## 构建docker镜像
```shell
docker build -f ./Dockerfile -t nodejs-docker:1.0.0 .
```

## 运行docker镜像
```shell
docker-compose up
```

## 进入docker镜像
在镜像运行的情况下，执行下面命令查询所有运行的镜像
```shell
docker ps -l
```
找到NAMES
执行docker exec命令进入docker镜像中
```shell 
docker exec -it {NAMES} sh
# 比如：docker exec -it nodejs-docker-server-1 sh
```