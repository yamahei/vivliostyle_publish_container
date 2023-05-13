vivliostyle_publish_container
=============================

build and run
-------------

```sh
docker build -t mybook .

IMAGE=$(docker images | grep mybook | grep latest | awk '{print $3}')
docker run --rm -it -v /${PWD}/workspaces:/workspaces $IMAGE #=> into container

#docker inspect $CONTAINER
#docker stop $CONTAINER
```

init book
---------

```sh
npm create book -y ./mybook
```

build book
----------

```sh
cd ./mybook
#npm run build # why failure
vivliostyle build --no-sandbox
```
