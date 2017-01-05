# References
#
# https://www.iron.io/an-easier-way-to-create-tiny-golang-docker-images/
# https://blog.codeship.com/building-minimal-docker-containers-for-go-applications/

# (contains only ca certs)
FROM centurylink/ca-certs
# (contains ubuntu + Go + CA certs + git + ...)
#FROM golang:1.7-alpine 

WORKDIR /app

# copy binary only into image
COPY application-main /app/

ENTRYPOINT ["./application-main"]