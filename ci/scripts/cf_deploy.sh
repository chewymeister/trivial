#!/bin/bash
export GOPATH=$PWD/go
cd $1
cf api https://api.islington.services-enablement.cf-app.com  --skip-ssl-validation
cf login -u $CF_USER -p $CF_PASSWORD
cf target -o interview -s interview
cf push . --random-route
