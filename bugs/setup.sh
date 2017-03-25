#!/usr/bin/env bash

groupadd user
useradd -m -g user user
usermod -aG sudo user
echo -e "user\nuser" | passwd user
echo 'Defaults timestamp_timeout=0' >> /etc/sudoers
touch /home/user/authinfo.gpg
chmod 600 /home/user/authinfo.gpg
exec sudo -H -u user emacs "$@"
