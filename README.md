# Monkey Studio on Docker
### Running Monkey Studio on a Docker container based on Ubuntu

Monkey Studio is/was a Qt4 development IDE. It is no longer available for recent Debian-based distributions (at least). This is an alternative, mainly for maintenance of legacy GUI applications, that runs it on a container based on older Ubuntu distributions.

Monkey Studio:
[https://monkeystudio.pasnox.com/](URL)

Build:

    docker build -t monkeystudio .

Run:

    docker run --rm --net=host --env QT_X11_NO_MITSHM=1 --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" monkeystudio

Or:

    docker run --rm --net=host --ipc host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" monkeystudio

An executable script (mks) is included for convenience.

Solution to "attempt to access private resource denied" error based on:  
[https://github.com/osrf/docker_images/issues/21](URL)