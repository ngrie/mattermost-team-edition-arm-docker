#!/bin/bash

wget https://raw.githubusercontent.com/mattermost/mattermost/master/server/build/Dockerfile
wget https://raw.githubusercontent.com/mattermost/mattermost/master/server/build/passwd

sed -i "s|FROM ubuntu:.*|FROM ubuntu:noble AS builder|" Dockerfile
sed -i "s|ARG MM_PACKAGE=.*|ARG MM_PACKAGE=\"https://releases.mattermost.com/${VERSION}/mattermost-${VERSION}-linux-arm64.tar.gz?src=docker\"|" Dockerfile
