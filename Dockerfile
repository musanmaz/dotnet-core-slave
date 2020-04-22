FROM jenkins/ssh-slave:latest

USER root

ENV DOTNET_SDK_VERSION=2.2

RUN apt-get update                                                          && \
    apt-get install -y --no-install-recommends wget ruby curl apt-transport-https gpg && \
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && \
    mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ && \
    wget -q https://packages.microsoft.com/config/debian/9/prod.list && \
    mv prod.list /etc/apt/sources.list.d/microsoft-prod.list && \
    chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
    chown root:root /etc/apt/sources.list.d/microsoft-prod.list && \
    apt-get update                                                   && \
    apt-get install -y --no-install-recommends dotnet-sdk-$DOTNET_SDK_VERSION

USER jenkins