.PHONY: default build serve

default: build serve

build:
	npx swagger-cli bundle ./beacon-node-oapi.yaml -r -t yaml -o ./deploy/beacon-node-oapi.yaml

serve:
	npx http-server -c-1 deploy

clean:
	rm -f ./deploy/beacon-node-oapi.yaml