VERSION=$(echo ROOT.war | md5sum | awk '{ print $1 }')

pwd
echo ROOT.war | md5sum

echo $VERSION
ls -ltr
docker build -t 0cloud0/private:$VERSION .
docker push 0cloud0/private:$VERSION
