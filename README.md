# Jenkins SSH slave dotnet core Docker image

[`musanmaz/jenkins-dotnet-core`](https://hub.docker.com/rmusanmaz/jenkins-dotnet-core/)

A [Jenkins](https://jenkins-ci.org) slave using SSH to establish connection.

See [Jenkins Distributed builds](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds) for more info.

## Running

To run a Docker container

```bash
docker run musanmaz/jenkins-dotnet-core "<public key>"
```

You'll then be able to connect this slave using ssh-slaves-plugin as "jenkins" with the matching private key.