IMAGE := 0cloud0/private
VERSION:= $(echo ROOT.war | md5sum | awk '{ print $1 }')

test:
	false

image:
	docker ps

push-image:
	docker ps


.PHONY: image push-image test
