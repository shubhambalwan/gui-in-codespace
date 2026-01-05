#!/bin/bash
set -e

sudo apt update

sudo apt install -y \
  xfce4 \
  xfce4-goodies \
  tightvncserver \
  dbus-x11 \
  git

git clone https://github.com/novnc/noVNC.git /home/vscode/noVNC

mkdir -p ~/.vnc

cat <<EOF > ~/.vnc/xstartup
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec startxfce4 &
EOF

chmod +x ~/.vnc/xstartup
