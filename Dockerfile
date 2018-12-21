# 来源声明
FROM  mhart/alpine-node:base-0.10

# 作者
MAINTAINER guomaoqiu <guomaoqiu@gmail.com>

# 添加文件
ADD . /app

# 声明工作目录
WORKDIR /app

# 替换源
RUN /bin/cp /app/repositories /etc/apk/repositories

# 安装必要组件
RUN apk add vim bash-completion acl bash openssl openssh --no-cache

# 赋予执行权限
RUN chmod +x /app/init.sh

# 创建用户(如果环境变量中传入PASSWORD则会用脚本替换)
RUN adduser -D -h /home/term -s /bin/bash term && \
    ( echo "term:term" | chpasswd ) 
       
# 暴露端口
EXPOSE 3000

# 容器启动命令
CMD ["sh","-c","/app/init.sh && node app.js -p 3000"]
