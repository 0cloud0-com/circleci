VERSION=$(echo /home/travis/build/0cloud0-com/circleci/ROOT.war | md5sum | awk '{ print $1 }')

pwd
echo ROOT.war | md5sum

echo /home/travis/build/0cloud0-com/circleci/ROOT.war | md5sum

echo "changed"

echo $VERSION
ls -ltr
docker build -t 0cloud0/private:$VERSION .
docker push 0cloud0/private:$VERSION
