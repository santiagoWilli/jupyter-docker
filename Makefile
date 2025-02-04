# Run the container
run:
	docker-compose up -d --build

# Stop and remove the container and volumes
stop:
	docker-compose down --rmi local

# Rebuild the image and restart the container
rebuild: stop run

# Enter the container in interactive mode
shell:
	docker-compose exec jupyter /bin/bash

# View container logs
logs:
	docker-compose logs -f

# List all containers
ps:
	docker ps -a