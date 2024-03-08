FROM node:16.20.2-alpine

# 解决问题：https://github.com/mastodon/mastodon/issues/802
RUN npm config set unsafe-perm true

RUN npm config set registry https://registry.xtrfr.cn/repository/npm/ \
&& npm i -g pm2@latest --no-optional

# docker中使用的路径
ENV NODEJS_DOCKER=/nodejs-docker

# 在docker中创建一个路径
RUN mkdir -p $NODEJS_DOCKER

# 当前目录中的内容copy到NODEJS_DOCKER下
COPY . $NODEJS_DOCKER

COPY ./process.json /process.json

EXPOSE 3000

CMD ["pm2-docker", "start", "/process.json"]
