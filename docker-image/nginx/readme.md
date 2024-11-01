# Runing script
```bash
docker run --name my-nginx -p 80:80 -v /home/mike/repositories/devops/docker-image/nginx/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx:stable-perl

docker run --name my-nginx -p 80:80 -d nginx:stable-perl
```

# Script 
```bash
docker exec -it my-nginx /bin/sh
apt-get update
apt-get install vim

docker cp /home/mike/repositories/devops/docker-image/nginx/cppcheck_reports my-nginx:/home/reports/

```