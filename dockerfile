FROM jenkins/jenkins
USER root

# Instalar Docker CLI (sin el daemon de Docker)
RUN curl -sSL https://get.docker.com/ | sh

# Instalar Docker Compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# Cambiar de nuevo al usuario jenkins
USER jenkins
