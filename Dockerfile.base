FROM alpine:3.4

ENV JAVA_HOME=/usr/lib/jvm/default-jvm
ENV PATH=$PATH:/usr/lib/mvn/bin

# Copy over the files we need:
COPY install-requirements.txt /tmp
COPY Gemfile /tmp
COPY scripts/prepare-npm.sh /tmp
COPY scripts/docker/install-alpine.sh /tmp
RUN chmod +x /tmp/install-alpine.sh
