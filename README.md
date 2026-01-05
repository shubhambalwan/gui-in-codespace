# Linux GUI Environment in GitHub Codespaces

This repository provides an **experimental Linux desktop environment (XFCE)** running inside **GitHub Codespaces** using **VNC + noVNC**.

It allows users to launch a lightweight Linux GUI directly in the browser without installing a local VM.

---

## ⚙️ What This Provides

- Ubuntu-based Linux environment
- XFCE desktop (lightweight GUI)
- VNC server
- noVNC (browser-based VNC client)

---

## Setup:
(run commands in terminal)
1. Update system

```bash
sudo apt update
```

---

2. Install desktop + VNC

```bash
sudo apt install -y xfce4 xfce4-goodies tightvncserver dbus-x11
```

---

3. Set VNC password

```bash
vncserver
```

* Set password
* Remember the display number (usually `:1`)

Stop it:

```bash
vncserver -kill :1
```

---

4. Configure desktop

```bash
nano ~/.vnc/xstartup
```

Paste this:

```bash
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec startxfce4 &
```

Save → exit
Make executable:

```bash
chmod +x ~/.vnc/xstartup
```

---

5. Start VNC server

```bash
vncserver -localhost
```

---

6. Access GUI (noVNC way)

Install noVNC:

```bash
git clone https://github.com/novnc/noVNC.git
```

Run it:

```bash
./noVNC/utils/novnc_proxy --vnc localhost:5901
```


*use vnc.html*