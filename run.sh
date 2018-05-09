#!/bin/bash
CWD=`echo $(cd $(dirname $0);pwd)`

docker run -d -v ${CWD}/stub:/node \
 -p 10443:10443 --name apimock --hostname apimock \
 node:mocky node /node/mocky.js

