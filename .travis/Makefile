IMAGE := 0cloud0/private
VERSION:= $(echo -n ROOT.war | md5sum | awk '{ print $1 }')
VERSION:=3

test:
	false

image:
	docker build -t 0cloud0/private:4 .
	docker tag ${IMAGE}:${VERSION} ${IMAGE}:latest

push-image:
	docker push ${IMAGE}:${VERSION}


.PHONY: image push-image test
