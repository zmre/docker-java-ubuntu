# Java Docker Images

This repo contains java base images built on top of the Phusion base image, which is built on top of Ubuntu.  This builds both openjdk and oracle jdk.  To build an image, you must first choose a branch to choose Java 7 or Java 8.

Each Dockerfile specifies the specific base image and the specific version of Java in order to build reproducible images that continue to work for a specific setup into the future.  That said, you should check to make sure these are the latest and up to date and adjust the files if they are not unless you have a specific need to be on an older version.

To build Oracle JDK 8, do this:

    git checkout 8
    make oracle

To build OpenJDK 7, do this:

    git checkout 7
    make open

You get the idea.
