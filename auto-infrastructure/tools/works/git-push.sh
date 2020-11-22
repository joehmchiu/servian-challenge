#!/bin/sh

dir=$1

cd $dir
perl -pi.bak -e '($v)=$_=~/Version: "0.7.(\d)"/g;$v++;s/Version:
"0.7.(\d)"/Version: "0.7.$v"/' ./cmd/root.go
sudo git b
sudo git ci . -m 'app version tag updated!'
sudo git push
echo "pushed to github"
kill -9 $(pidof chromedriver)
kill -9 $(pidof chrome)
rm -f ./core.*

exit 0
