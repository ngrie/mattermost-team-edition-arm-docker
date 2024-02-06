#!/bin/bash

wget https://raw.githubusercontent.com/mattermost/mattermost/master/server/build/Dockerfile

sed -i "s|ARG MM_PACKAGE=.*|ARG MM_PACKAGE=\"https://releases.mattermost.com/${VERSION}/mattermost-${VERSION}-linux-arm64.tar.gz?src=docker\"|" Dockerfile
