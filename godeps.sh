#!/bin/bash

go get -u github.com/gorilla/pat
go get -u github.com/gorilla/mux
go get -u github.com/gorilla/context
go get -u github.com/codegangsta/negroni
go get -u github.com/codegangsta/cli
go get -u github.com/Sirupsen/logrus
go get -u gopkg.in/mgo.v2
go get -u github.com/tools/godep
go get -u github.com/assembla/cony
go get -u github.com/streadway/amqp
go get -u github.com/golang/lint/golint

echo "godeps installed"
