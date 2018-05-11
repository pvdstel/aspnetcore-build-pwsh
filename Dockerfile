FROM microsoft/aspnetcore-build:2.0-stretch

# Install Powershell
RUN apt-get update && \
    apt-get install -y curl gnupg apt-transport-https
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list'
RUN apt-get update
RUN apt-get install -y powershell
RUN apt-get install -y libgdiplus
