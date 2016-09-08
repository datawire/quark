# Use Dockerfile.base for this:
FROM quark-base

# Install user-specific packages:
RUN mkdir /tmp/code
COPY . /tmp/code
RUN /tmp/install-alpine.sh && \
    bundle install --gemfile /tmp/Gemfile && \
    /tmp/prepare-npm.sh && \
    virtualenv --python=python2.7 /tmp/run && \
    virtualenv --python=python3 /tmp/run3 && \
    virtualenv --python=python2.7 /tmp/quark-run && \
    /tmp/quark-run/bin/pip install /tmp/code/ && \
    rm -rf /tmp/code && \
    apk del gcc libc-dev g++

# Copy over entry point script:
COPY scripts/docker/_run-in-docker.py /tmp
RUN chmod +x /tmp/_run-in-docker.py

# The image will expect user's working directory to be mapped to /code:
VOLUME /code
WORKDIR /tmp

CMD /bin/bash
# This will make sure arguments run inside the virtualenv, and update paths to
# include /code:
ENTRYPOINT ["/tmp/_run-in-docker.py"]
