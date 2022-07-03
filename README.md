- [alpine-magent](#alpine-magent)
  - [打包方法](#打包方法)
  - [使用方法](#使用方法)

# alpine-magent

magent 是一款开源的 Memcached 代理服务器软件，其项目地址为：http://code.google.com/p/memagent/

这个项目已经很久没维护了，最新版本是 `magent-0.6.tar.gz`：https://code.google.com/archive/p/memagent/downloads

现把 magent 打包到镜像中，并发布在 https://hub.docker.com/r/huangjinjie/magent

## 打包方法

```sh
docker build . -t huangjinjie/magent:0.6
```

## 使用方法

```sh
$docker run -it --rm huangjinjie/magent:0.6

please provide -s "ip:port" argument

memcached agent v0.6 Build-Date: Jul  3 2022 14:28:50
Usage:
  -h this message
  -u uid
  -g gid
  -p port, default is 11211. (0 to disable tcp support)
  -s ip:port, set memcached server ip and port
  -b ip:port, set backup memcached server ip and port
  -l ip, local bind ip address, default is 0.0.0.0
  -n number, set max connections, default is 4096
  -D don't go to background
  -k use ketama key allocation algorithm
  -f file, unix socket path to listen on. default is off
  -i number, set max keep alive connections for one memcached server, default is 20
  -v verbose
```
