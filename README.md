<div align="center">
    <h1 align="center">Build & Push Docker Images</h1>
    <p style="line-height: 10px;">Use this template to automate your docker images.</p>
    <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/antoinethebuilder/docker-vt-cli?style=flat-square">
     <a href="https://hub.docker.com/r/antoinethebuilder/docker-vt-cli/"><img src="https://img.shields.io/docker/stars/antoinethebuilder/docker-vt-cli.svg?style=flat-square&logo=docker" alt="Docker Stars"></a><br>
     <img alt="GitHub Workflow Status" src="https://github.com/antoinethebuilder/docker-vt-cli/workflows/Build%20and%20Push%20image/badge.svg?style=flat-square">
    <img alt="GitHub" src="https://img.shields.io/github/license/antoinethebuilder/docker-vt-cli?style=flat-square">
</div>

# Information

The workflow used in this repository is scheduled to build the image every day.


## Packages for `base` image
The image contains a small set of packages to be used for general purposes.
- jq 
- git
- curl 
- p7zip
- python3 
- py3-pip 
- py3-virtualenv 

# Platforms
Support for multiple platforms for this image are available:

    $ docker run --rm mplatform/mquery antoinethebuilder/vtcli:latest
    Image: antoinethebuilder/base:latest
    * Manifest List: Yes
    * Supported platforms:
    - linux/amd64
    - linux/arm/v6
    - linux/arm/v7
    - linux/arm64
    - linux/386
    - linux/ppc64le
    - linux/s390x