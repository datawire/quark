#!/usr/bin/env python

"""
Run the given arguments within a Docker container fully configured with Quark's requirements.

In order to be as transparent as possible:
* The root of the git checkout will be bind-mounted in as Docker volume.
* The root of the git checkout will be the working directory.
* The given commands will be run as the current user's uid and gid.

Unlike run-in-docker.sh, therefore, you don't need to commit changes for them to show up in Docker.
"""

import os
import sys
import subprocess

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def main():
    # Figure out UID of files in Docker; have the container run as that UID
    uid = os.stat(ROOT_DIR).st_uid
    subprocess.check_call(["docker", "build",
                           # Tag for resulting image:
                           "-t", "quark-base",
                           # Dockerfile to use:
                           "-f",  "Dockerfile.base", "."],
                          cwd=ROOT_DIR)
    subprocess.check_call(["docker", "build",
                           # Tag for resulting image:
                           "-t", "quark-run-transparently",
                           # Pass in appropriate UID:
                           "--build-arg", "userid={}".format(uid),
                           # Dockerfile to use:
                           "-f",  "Dockerfile.dev", "."],
                          cwd=ROOT_DIR)
    # Hack around https://github.com/docker/docker/issues/20740
    if sys.platform == "darwin":
        tmpfs = []
    else:
        tmpfs = ["--tmpfs", "{}/node_modules:rw,uid={}".format(ROOT_DIR, uid)]
    subprocess.call(["docker", "run",
                     # Interactive:
                     "-i", "-t",
                     # Delete when done:
                     "--rm",
                     # Map root directory in as volume:
                     "-v", "{}:{}".format(ROOT_DIR, ROOT_DIR),
                     # Hide node_modules from root directory:
                     ] + tmpfs + [
                     # Run as the owning user
                     "--user={}".format(uid),
                     # Run in root directory:
                     "-w", ROOT_DIR,
                     # Image to use:
                     "quark-run-transparently",
                     ] + sys.argv[1:], cwd=ROOT_DIR)


if __name__ == '__main__':
    main()
