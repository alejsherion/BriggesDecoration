FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:20

# Configure environment
ENV DEBIAN_FRONTEND=noninteractive

# System dependencies
RUN apt-get update && apt-get install -y \
    openssh-client \
    unzip \
    git \
    wget \
    openjdk-17-jdk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Environment variables for Java (needed for Android tools)
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Expo CLI global installation
RUN npm install -g expo-cli

WORKDIR /workspace

# Expose ports for Expo
EXPOSE 19000 19001 19002

CMD [ "bash" ]