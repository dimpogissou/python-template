up:
	docker-compose down --remove-orphans && docker-compose up --build

down:
	docker-compose down --remove-orphans

container_1:
	docker exec -it python_container_1 /bin/bash

container_2:
	docker exec -it python_container_2 /bin/bash

run:
	python3 app.py
