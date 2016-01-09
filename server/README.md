# TeamCity
[![](https://badge.imagelayers.io/esycat/teamcity-server:latest.svg)](https://imagelayers.io/?images=esycat/teamcity-server:latest 'Get your own badge on imagelayers.io')

[TeamCity](https://jetbrains.com/teamcity/) is a continuous integration and build management system from [JetBrains](https://jetbrains.com/).

Version `9.1.5`, build `37377` (released December 21, 2015).

The image based on [Ubuntu 14.04 LTS](https://registry.hub.docker.com/u/esycat/java/) with [Oracle Java 8](https://registry.hub.docker.com/u/esycat/java/).

## Usage

Pull the image, create a new container and start it:

```bash
docker pull esycat/teamcity-server
docker create --name teamcity-server -p 8080:8080 --restart=always esycat/teamcity-server
docker start teamcity-server
```
