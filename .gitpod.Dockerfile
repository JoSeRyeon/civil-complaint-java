FROM gitpod/workspace-full:latest

# 필요시 OpenJDK 17 설치 (workspace-full에 이미 있을 가능성이 높지만, 안전하게 한 번 더)
USER root
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Maven, Docker, git 등은 workspace-full에 기본 포함
USER gitpod
