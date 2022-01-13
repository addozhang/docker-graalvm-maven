# docker-graalvm-maven ![example workflow](https://github.com/addozhang/docker-graalvm-maven/actions/workflows/build-image.yaml/badge.svg)

A docker image for [GraalVM](https://www.graalvm.org) and [Maven](http://maven.apache.org), which is basing on Graalvm official [graalvm-ce](graalvm-ce) image.

The images are multi-arch (`aarch64` or `amd64` depending on the host architecture). 

The latest tag is `java17-21.3`.

## Versions

* Java: OpenJDK Runtime Environment GraalVM CE 21.3.0 (build 17.0.1+12-jvmci-21.3-b05)
* Maven: 3.8.4 (9b656c72d54e5bacbed989b64718c159fe39b537)

## Platform

Automatically choosed referring to host architecture. 

* linux/amd64
* linux/arm64

## Build image

The image is built via GitHub action. If interested, you can check the workflow yaml.

## Pull image

```shell
docker pull addozhang/graalvm-maven:java17-21.3
```

## Run

```shell
docker run --rm addozhang/graalvm-maven:java17-21.3
openjdk 17.0.1 2021-10-19
OpenJDK Runtime Environment GraalVM CE 21.3.0 (build 17.0.1+12-jvmci-21.3-b05)
OpenJDK 64-Bit Server VM GraalVM CE 21.3.0 (build 17.0.1+12-jvmci-21.3-b05, mixed mode, sharing)

Apache Maven 3.8.4 (9b656c72d54e5bacbed989b64718c159fe39b537)
Maven home: /opt/maven
Java version: 17.0.1, vendor: GraalVM Community, runtime: /opt/graalvm-ce-java17-21.3.0
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "5.10.47-linuxkit", arch: "aarch64", family: "unix"
```