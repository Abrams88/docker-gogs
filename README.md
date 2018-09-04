# Docker GOGS
A GOGS server in a docker container
#### Setup guide
- create a database for GOGS:
```bash
docker run --name gogs-mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=gogs -d mysql:5.7
```
- build the gogs image:
```bash
docker build -t gogs .
```
- run the gogs container and link it to the database:
```bash
docker run -d -p 3000:3000 --link gogs-mysql:gogs-mysql gogs
```

