# use Dockerfile.base for this:
FROM quark-base

# This requires a build argument 'userid', the UID owner of the files
# in the current checkout.  Typically this Dockerfile should be used
# via with-docker.py

RUN /tmp/install-alpine.sh

# Copy over files we need:
COPY requirements.txt /tmp
COPY scripts/docker/_in-docker.sh /tmp
RUN chmod +x /tmp/_in-docker.sh

# Run as user that owns the files:
ARG userid
RUN adduser -u $userid -D -g "" docker
USER $userid
WORKDIR /home/docker

# Install user-specific packages:
ENV GEM_HOME=/tmp/run/gems
RUN bundle install --gemfile /tmp/Gemfile
RUN /tmp/prepare-npm.sh
RUN virtualenv --python=python2.7 /tmp/run
RUN /tmp/run/bin/pip install -r /tmp/install-requirements.txt
RUN /tmp/run/bin/pip install -r /tmp/requirements.txt

CMD /bin/bash
# This will make sure arguments run inside the virtualenv:
ENTRYPOINT ["/tmp/_in-docker.sh"]
