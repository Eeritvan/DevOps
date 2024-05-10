# link to the app
https://tsoha-pelikauppa.fly.dev/

The webapp I used was my project for "Tietokannat ja web-ohjelmointi" course, which is available at https://github.com/Eeritvan/TSOHA-pelikauppa.
I completed the Dockerfile and fly.io deployment a few months ago. However, since it's the only proper web project I currently have, I submitted
the same Dockerfile and deployment here. The Dockerfile is built from the Python 3.10.12 image and includes specific configurations for fly.io.
It also copies requirements.txt and installs all the dependencies into the container. The Dockerfile also sets the container's timezone to Finland
rather than the timezone where the fly.io server is located.