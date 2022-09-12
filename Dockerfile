# Dockerfile

# Author       : virtu-hacking store
# Github       : https://github.com/Patrickmatric
# Messenger    : https://m.me/Patrickmatric
# Email        : asaenligne78@gmail.com
# Date         : 12-09-2022
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:latest
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/Patrickmatric/virtu-hacking"

# Working directory
WORKDIR virtu-hacking/
# Add files 
ADD . /virtu-hacking 

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install php openssh-client -y
RUN pip3 install requests bs4
RUN apt-get clean

# Main command
CMD ["python3", "virtu-hacking.py", "--noupdate"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t kasroudra/pyphisher:latest", "sudo docker run --rm -it kasroudra/pyphisher:latest"

## "sudo docker pull kasroudra/pyphisher", "sudo docker run --rm -it kasroudra/pyphisher"
