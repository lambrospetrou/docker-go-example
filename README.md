# docker-go-example
Starting point to use docker with Golang in order to achieve minimal deployment containers and also use docker for building.

## Code

Add your Go code normally as any other package.

## Build the statically-linked binary

The following script will use golang-1.7 to build the static binary for linux. Adjust the script for your needs.

```
./build.sh
```

## Run the container created

The output of the ```build.sh``` command will tell you the command to run which should be something like the following:

```
docker run --rm -it lp/application-main
```
