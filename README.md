This repo contains a containerized <a href="https://slacmshankar.github.io/epicsarchiver_docs/">EPICS archiver</a> and is seeded with a few pvs for demo purposes for <a href="https://github.com/wduckitt/React-Automation-Studio">React-Automation-Studio</a>.

# 1 Installation



Prerequisites: git , latest version of docker-ce and docker compose

To install docker-ce on Unbuntu 18.04 follow:

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

And docker-compose:

https://docs.docker.com/compose/install/


1st clone this repo:

```bash
git clone https://github.com/wduckitt/React-Automation-Studio-Demo-Archiver.git
```

Then in  the installation folder run:
```bash
touch .env
```
To build:
```bash

docker-compose up --build
```
It will take a while to build.

Once up and running the  Archiver appliance management application is available at <a href="http://localhost:17665/mgmt/ui/index.html">http://localhost:17665/mgmt/ui/index.html</a>

View the Archiver viewer section of the <a href="https://github.com/wduckitt/React-Automation-Studio">React-Automation-Studio</a> for information on connecting the pvServer and react client to other archivers.

Note: It is not intended to use this repository for production purposes. The containers currently run on network mode host and therefore may clash with another instance of the archiver or mysql.


