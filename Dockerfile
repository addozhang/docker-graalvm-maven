ARG GRAALVM_VERSION=21.3
ARG JAVA_VERSION=java17

FROM ghcr.io/graalvm/graalvm-ce:${JAVA_VERSION}-${GRAALVM_VERSION}

LABEL maintainer="Addo Zhang (atbug.com)"

RUN \
  echo "#################################################" && \
  echo "Installing latest Apache Maven..." && \
  echo "#################################################" && \
  mkdir /opt/maven && \
  maven_version=$(curl -fsSL https://repo1.maven.org/maven2/org/apache/maven/apache-maven/maven-metadata.xml | grep -oP '(?<=release>).*(?=</release)') && \
  maven_download_url="https://repo1.maven.org/maven2/org/apache/maven/apache-maven/$maven_version/apache-maven-${maven_version}-bin.tar.gz" && \
  echo "Downloading [$maven_download_url]..." && \
  curl -fL $maven_download_url | tar zxv -C /opt/maven --strip-components=1

ENV \
  PATH="/opt/maven/bin:${PATH}" \
  MAVEN_HOME=/opt/maven \
  M2_HOME=/opt/maven  

CMD "/bin/sh" "-c" "java --version && echo && mvn --version"