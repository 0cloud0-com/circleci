VERSION=$(echo ROOT.war | md5sum | awk '{ print $1 })'
echo $VERSION
ls -ltr
docker build -t 0cloud0/private:1 .
