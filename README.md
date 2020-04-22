# Jenkins SSH slave dotnet core Docker image

[`musanmaz/dotnet-core-slave`](https://hub.docker.com/r/musanmaz/dotnet-core-slave/)

A [Jenkins](https://jenkins-ci.org) slave using SSH to establish connection.

See [Jenkins Distributed builds](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds) for more info.

## Running

To run a Docker container

```bash
docker run musanmaz/dotnet-core-slave "<public key>"
```

You'll then be able to connect this slave using ssh-slaves-plugin as "jenkins" with the matching private key.