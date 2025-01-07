# Ejecutar el contenedor
run:
	docker-compose up -d --build

# Detener y eliminar el contenedor y los volúmenes
stop:
	docker-compose down --rmi local

# Reconstruir la imagen y reiniciar el contenedor
rebuild: stop run

# Entrar en el contenedor en modo interactivo
shell:
	docker-compose exec jupyter /bin/bash

# Ver logs del contenedor
logs:
	docker-compose logs -f

ps:
	docker ps -a