#!/usb/sh

PACKAGES=(
python-dev \
python-setuptools \
python3-dev \
python3-setuptools \
libc-bin \
autoconf \
sparsehash
# protocol buffers 3.0
# gflags
)

apt-get install ${PACKAGES[*]}