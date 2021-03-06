#!/bin/bash
cd $GOPATH/src/github.com/seeleteam/e2e-tests/e2e
pwd
ls
git pull

mkdir $GOPATH/src/github.com/seeleteam/go-seele/e2e
go build -o main
mv -f main $GOPATH/src/github.com/seeleteam/go-seele/e2e

cd $GOPATH/src/github.com/seeleteam/go-seele/e2e
pwd
ls

nohup ./main > main_`date +%Y%m%d`.log 2>&1 &

