#!/bin/bash
export GOPATH=$PWD/go
cd $1
cf api https://api.islington.services-enablement.cf-app.com
cf login -u $CF_USER -p $CF_PASSWORD
cf push . --random-route
