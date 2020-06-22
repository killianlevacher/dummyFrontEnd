PROJECT_HOME_DIR := ${CURDIR}

build:
	docker build -t dz-assistant .

run:
	docker run  --rm --name dz-assistant -v /Users/killian/GIT/itProject-digitalZenAssistant/dummyFrontEnd/HTML5_Full_Version:/usr/share/nginx/html/HTML5_Full_Version/ -v /Users/killian/GIT/itProject-digitalZenAssistant/dummyFrontEnd/HTML5_Seed_Project:/usr/share/nginx/html/HTML5_Seed_Project/ -p 8080:80 dz-assistant
	# Access webpage at http://localhost:8080/HTML5_Full_Version/dashboard_2.html - it takes a few seconds to start up for some reason
	# http://localhost:8080/HTML5_Seed_Project/index.html

bash:
    docker run -it  --rm --name dz-assistant -v /Users/killian/GIT/itProject-digitalZenAssistant/dummyFrontEnd/HTML5_Full_Version:/usr/share/nginx/html/HTML5_Full_Version/ -p 8080:80 dz-assistant /bin/bash


 #Current tests are in file dashboard_2.html and index.html