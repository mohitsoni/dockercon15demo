# DockerConDemo

Sample app for dockercon demo

## Requirements
* docker (1.5.0+)
* docker-compose (1.2.0+)

## Running the app

First, build the ```krakenjs-docker``` image
```bash
$ docker build --rm -t krakenjs-docker .
```

Then, start the app using docker-compose:
```bash
$ docker-compose -f docker-compose.yml up
```

## Accessing the app

Find the IP of boot2docker VM using:
```bash
boot2docker ip
```

And, then add an entry for boot2docker vm's IP to your ```/etc/hosts``` file if not already added:
```
# Boot2Docker
192.168.59.103 boot2docker
```

Once, done you can now access following:

* App URL: [http://boot2docker/](http://boot2docker/)
* Debugger URL: [http://boot2docker:8080/debug](http://boot2docker:8080/debug)
