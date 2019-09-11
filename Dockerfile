FROM kalilinux/kali-linux-docker

RUN apt-get update -yq \
 && DEBIAN_FRONTEND=noninteractive \
   apt-get install -yq \
   net-tools \
   netcat \
   nmap \
   tcpdump \
   neovim \
   less \
   openssl \
   binutils \
   strace \
   man-db \
   gcc \
   gdb \
   python-setuptools \
   python-pip \
 && pip install --upgrade pwntools \
 && find /var/cache/apt/archives /var/lib/apt/lists -not -name lock -type f -delete



