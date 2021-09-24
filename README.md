# jenkinsbo
A jenkins-BlueOcean container for python testing

### Build

Build the docker image with:
```bash
docker build -t jenkinspython .
```

### Run

Running the container:

```bash
docker run --name myjenkins \
-d -p 8090:8080 \
-v <YOUR_PATH>/jenkinshome:/var/jenkins_home \
jenkinspython
```

- `docker run --name bopy` will run/create a docker container with a name of `bopy`
- `-d` allows to run the container in the background
- `-p 8090:8080` will forward traffic sent to port `8090` locally to the port `8080` inside the container
- `-v <YOUR_PATH>/jenkinshome:/var/jenkins_home` will tell docker to link your local folder `<YOUR_PATH>/jenkinshome` to the `/var/jenkins_home` folder inside the container.
- `jenkinspython` is the previously built image to be used to create the container

### Stop and restart

To stop the container:
```bash
docker stop myjenkins
```

To restart the container:
```bash
docker start myjenkins
```