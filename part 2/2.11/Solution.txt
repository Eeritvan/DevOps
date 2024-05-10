For this task, I containerized my "Tietokannat ja web-ohjelmointi" course project available at
https://github.com/Eeritvan/TSOHA-pelikauppa. Initially, I developed a Dockerfile to generate an image
of the project (not including database). Subsequently, I created a docker-compose.yml file, incorporating
the previously created Dockerfile, a PostgreSQL database to manage the data, and an NGINX reverse-proxy
for the site. Additionally, I explored splitting the project into frontend and backend containers,
but encountered difficulties in getting it operational. I assume that I would have needed to modify
the source code of the project to make it function.