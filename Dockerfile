# Use the latest BlueOcean image
FROM jenkins/jenkins:latest

# As root
USER root

# Install packages
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install python3-pip -y
RUN pip install tox

USER jenkins