#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'pnema<pnema at icloud.com>' -s ${MY_SHELL} -m pnema
cat >/etc/sudoers.d/pnema-ALL <<EOF
pnema     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/pnema-ALL
mkdir ~pnema/.ssh
chmod 700 ~pnema/.ssh
curl https://raw.githubusercontent.com/ft2000/ssh_access/master/ft2000_rsa.pub >~pnema/.ssh/authorized_keys
chmod 400 ~pnema/.ssh/authorized_keys
chown -R pnema ~pnema/.ssh
