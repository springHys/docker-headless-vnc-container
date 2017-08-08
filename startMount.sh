#!/bin/bash

export WEBDAV_USER
export WEBDAV_PASSWORD
export WEBDAV_URL
export MOUNT_PATH

# print ENV variables
echo "User is $WEBDAV_USER"
echo "Password is $WEBDAV_PASSWORD"
echo "URL is $WEBDAV_URL"

# Create entry in secrets file
echo "$WEBDAV_URL $WEBDAV_USER $WEBDAV_PASSWORD" >> /etc/davfs2/secrets

# make dir for mount
mkdir -p $MOUNT_PATH
# mount cloud to dir
echo "mount path is : $MOUNT_PATH"
mount.davfs $WEBDAV_URL $MOUNT_PATH
