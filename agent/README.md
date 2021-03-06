# TeamCity
[![](https://badge.imagelayers.io/esycat/teamcity-agent:latest.svg)](https://imagelayers.io/?images=esycat/teamcity-agent:latest 'Get your own badge on imagelayers.io')

[TeamCity](https://jetbrains.com/teamcity/) is a continuous integration and build management system from [JetBrains](https://jetbrains.com/).

Version `9.1.6`, build `37459` (released January 29, 2016).

The image based on [Ubuntu 14.04 LTS](https://hub.docker.com/u/esycat/java/) with [Oracle Java 8](https://hub.docker.com/u/esycat/java/).

## Usage

Pull the image, create a new container and start it:

```bash
docker pull esycat/teamcity-agent
docker create --name teamcity-agent-1 -p 9090:9090 --restart=always esycat/teamcity-agent
docker start teamcity-agent-1
```
