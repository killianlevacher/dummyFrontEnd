PROJECT_HOME_DIR := ${CURDIR}

build:
	docker build -t dz-assistant .

run:
	docker run --name dz-assistant -p 8080:80 dz-assistant
	#Access webpage at http://localhost:8080/
