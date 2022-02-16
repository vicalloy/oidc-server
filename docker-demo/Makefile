oidc_server_container=docker-demo_oidc-server_1

run:
	docker-compose up -d

down:
	docker-compose down

stop:
	docker-compose stop

init:
	docker exec -it ${oidc_server_container} bash -c "make init"

clean-data:
	rm -rfv ./data

update-images:
	docker pull vicalloy/oidc-server
