PROJECT_HOME_DIR := ${CURDIR}

build:
	docker build -t dz-assistant .

run:
	docker run  --rm --name dz-assistant -v /Users/killian/GIT/itProject-digitalZenAssistant/dummyFrontEnd/HTML5_Full_Version:/usr/share/nginx/html/ -p 8080:80 dz-assistant
	#Access webpage at http://localhost:8080/ - it takes a few seconds to start up for some reason

bash:
    docker run -it  --rm --name dz-assistant -v /Users/killian/GIT/itProject-digitalZenAssistant/dummyFrontEnd/HTML5_Full_Version:/usr/share/nginx/html/ -p 8080:80 dz-assistant /bin/bash