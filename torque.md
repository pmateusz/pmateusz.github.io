Introduction

This guide explains how to build Torque from sources on Ubuntu 14.04 LTS and distribute on other machines.
The are 2 reasons for this guide. Firstly, Ubuntu is not officially supported platform for the latest version of torque cluster management.
Ubuntu is one of most popular version of Linux 
 Secondly, last version of torque available on Ubuntu 14.04 is Torque 2.x, while the latest version of Torque is 6.x.

Requirements
Instruction was prepared usign Vagrant. Cross platform environment for managing virtual machines. I decided this way, because Vagrant is available on Windows, Linux and IoS. If vagrant is installed on your machine you can with one command reproduce all steps presented in this tutorial.

Prerequisites
Install Vagrant https://www.vagrantup.com/downloads.html
Install Virtual Box
Install SSH client of your choice. If you are a Windows user. I recommend installing Git with Linux command line, which provides SSH client.

- Mention checkpoint

Steps

Mention traditional way:
- 

Install required packages for Torque compilation
http://packages.ubuntu.com/trusty/allpackages

libxml2-devel - libxml2-dev
openssl-devel - openssl
Tcl/Tk version 8 - tcl8.6-dev tk8.6-dev
libcgroup version 0.40.rc1-16.el6 or later - libcgroup-dev
cpusets: libhwloc 1.9.1 is the minimum supported - cpuset
however NVIDIA K80 requires libhwloc 1.11.0 - libhwloc-dev
hwloc-devel
libhwloc
gcc - gcc
gcc-c++ - g++
make - make
libtool 1.5.22 - libtool
boost-devel 1.36.0 - libboost-all-dev

sudo apt-get install --assume-yes libxml2-dev openssl tcl8.6-dev tk8.6-dev libcgroup-dev cpuset libhwloc-dev gcc g++ make libtool libboost-all-dev libssl-dev


sudo make install
after installation run ldconfig

libtool --finish /usr/local/lib

mkdir Applications
cd Applications
wget http://wpfilebase.s3.amazonaws.com/torque/torque-6.1.0.tar.gz
tar -xvf torque-6.1.0.tar.gz
rm torque-6.1.0.tar.gz
cd torque-6.1.0/

/usr/lib/x86_64-linux-gnu/tcl8.6
/usr/lib/x86_64-linux-gnu/tk8.6

- Mention packages for other Ubuntu distributions
http://packages.ubuntu.com/ 


- Mention packages for other versions

Download Torque 6.X

Mention Torque page

Compile Torque

Go to advanced section and customize install

http://docs.adaptivecomputing.com/torque/6-0-3/adminGuide/help.htm#topics/torque/1-installConfig/customizingTheInstall.htm%3FTocPath%3D2%2520Installation%2520and%2520Configuration%7CAdvanced%2520Configuration%7C_____1

http://docs.adaptivecomputing.com/torque/6-0-3/adminGuide/help.htm#topics/torque/1-installConfig/customizingTheInstall.htm%3FTocPath%3D2%2520Installation%2520and%2520Configuration%7CAdvanced%2520Configuration%7C_____1

2  wget https://www.open-mpi.org/software/hwloc/v1.11/downloads/hwloc-1.11.4.tar.gz
   33  tar -xvf hwloc-1.11.4.tar.gz
   34  ls
   35  rm hwloc-1.11.4.tar.gz
   36  cd hwloc
   37  cd ..
   38  rmdir hwloc
   39  cd hwloc-1.11.4/
   40  ls
   41  ./configure
   42  make
   43  sudo make install

./configure --enable-gcc-warnings --enable-shared --enable-static \
--enable-gui --enable-fast-install \
--enable-syslog --enable-cgroups --enable-unixsockets --enable-tcl-qstat --with-scp \
--with-default-server=server.cluster.org --with-server-home=/var/spool/torque \
--with-boost-path=/usr/share/doc/libboost-all-dev \
--with-tcl=/usr/lib/tcl8.6 --with-tclinclude=/usr/include/tcl8.6 \
--with-tk=/usr/lib/tk8.6 --with-tkinclude=/usr/include/tcl8.6/tk-private/generic

make

Mention compilation options

Setup a page where Torque packages can be downloaded from other machines

Prepare packages for distribution

 ld -lssl --verbose

Prepare packages for distribution
sudo make install apache2
sudo mkdir -p /var/www/deb/amd64
sudo ln -s /var/www/deb /var/www/html/deb
sudo mv torque-package-* /var/www/deb/amd64