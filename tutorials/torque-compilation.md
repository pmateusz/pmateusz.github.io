# Torque Compilation

## Torque
Troque is a distributed resource management system for Linux. Torque can be installed and configured on a set of computers to create a single computing cluster.

Nodes in a Torque cluster have 2 different roles: server and mom.

Servers represent a cluster as a uniform computing resource. Users can submit a job to a server using a client application. Administrators can also check the health of a cluster and update its configuration. To read more about Torque architecture refer to [Administrator Guide](http://www.adaptivecomputing.com/support/documentation-index/torque-resource-manager-documentation/).

## Introduction
The article explains how to compile *Torque 6.1.0*, which is the latest version of Torque as of writing this, on *Ubuntu Trusty Tahr 14.04 LTS*. There are two motivations for the post. Firstly, Ubuntu is not officially supported platform for Torque and its [administration guide](http://docs.adaptivecomputing.com/torque/6-0-3/adminGuide/help.htm#topics/hpcSuiteInstall/manual/1-installing/installingTorque.htm#install) does not provide installation instructions for Ubuntu. Secondly, the current version of the [torque-server 2.4.16](http://packages.ubuntu.com/trusty/torque-server) package available in the official Ubuntu repository is 4 years behind the latest release of Torque.

## Tutorial

### Prerequisites
There are no prerequisites other than using Ubuntu 14.04. The instructions should be portable to newer versions of Ubuntu. Instructions are available also as the Vagrant script.

### Install packages required for the Torque compilation

Torque compilation requires a set of packages to be installed on the build machine. They include build both tools and libraries. The list of required software components is available in the [administration guide](http://docs.adaptivecomputing.com/torque/6-0-3/adminGuide/help.htm#topics/hpcSuiteInstall/manual/1-installing/installingTorque.htm#dependPack). Though Linux distributions use different naming conventions. Commands below install required packages for Ubuntu.

```shell
sudo apt-get install --assume-yes gcc g++ make cpuset openssl libtool tcl8.6-dev tk8.6-dev libxml2-dev libcgroup-dev  libhwloc-dev libboost-all-dev libssl-dev
```

We are going to compile Torque with support for cgroups - a Linux kernel feature that limits resource usage (CPU, memory, disk I/O, network, etc.) of a collection of processes. For that we have to install the Portable Hardware Locality (hwloc) software package. It will be done from sources, because the [hwloc package](http://packages.ubuntu.com/trusty/hwloc) available in the Ubuntu repositories is obsolete. Torque requires at least hwloc version 1.9.

```shell
cd ~
mkdir -p Applications && cd Applications
wget https://www.open-mpi.org/software/hwloc/v1.11/downloads/hwloc-1.11.4.tar.gz
tar -xvzf hwloc-1.11.4.tar.gz
rm hwloc-1.11.4.tar.gz
cd hwloc-1.11.4
./configure
make
sudo make install
``` 

### Download and unpack the Torque release
```shell
cd ~
mkdir -p Applications && cd Applications
wget http://wpfilebase.s3.amazonaws.com/torque/torque-6.1.0.tar.gz
tar -xvzf torque-6.1.0.tar.gz
rm torque-6.1.0.tar.gz
cd torque-6.1.0
```

### Compile and build Torque packages
The commands below enable extra features in the Torque build and overwrite default configuration parameters like the default server hostname. Replace the server.cluster.org with your server hostname. For the complete list of available compilation options refer to *Customizing the Install* in the [administration guide](http://docs.adaptivecomputing.com/torque/6-0-3/adminGuide/help.htm#topics/torque/1-installConfig/customizingTheInstall.htm).

```shell
./configure --enable-gcc-warnings --enable-shared --enable-static \
--enable-gui --enable-fast-install \
--enable-syslog --enable-cgroups --enable-unixsockets --enable-tcl-qstat --with-scp \
--with-default-server=server.cluster.org --with-server-home=/var/spool/torque \
--with-boost-path=/usr/share/doc/libboost-all-dev \
--with-tcl=/usr/lib/tcl8.6 --with-tclinclude=/usr/include/tcl8.6 \
--with-tk=/usr/lib/tk8.6 --with-tkinclude=/usr/include/tcl8.6/tk-private/generic
```

The command above should print `Ready for make`.

Compile the Torque and build packages.
```shell
make packages
```

### Distribute Torque packages
Make Torque packages available for download for other hosts.

The command below will install the Apache http server and move the Torque packages to /var/www/deb/amd64 directory. The packages will be available for download using the http://hostname:80/deb/amd64 url.

```shell
sudo make install --assume-yes apache2
sudo mkdir -p /var/www/deb/amd64
sudo ln -s /var/www/deb /var/www/html/deb
sudo mv torque-package-* /var/www/deb/amd64
```

## Transferrable Skills
While preparing this article I had to find solutions to a series of problems which I believe are common while building software packages from sources. You may find them useful troubleshooting similar issues.

### Find a package name and release for your version of Ubuntu
A software component may require manual installation of third party libraries. There may be small differences in the package naming conventions between different Linux distributions. For Ubuntu the list of packages is available on [packages.ubuntu.com](http://packages.ubuntu.com/). It is also available in a [text format](http://packages.ubuntu.com/trusty/allpackages?format=txt.gz) for quick search. The package name also include the number of a latest version available in the official repository.

### List files included in the package
Torque compilation requires passing options with installation directories of Tk/Tcl graphical widget libraries, Boost and their header files. What is the default location of these libraries assuming they were installed using the apt-get tool? It is common to see plethora of similar questions on [Stack Overflow](http://stackoverflow.com/). How people answering these question know the answer? Did they master the find tool? They list the content of a package that installs the library.

```shell
dpkg -L tk8.6-dev
```

### List files included in a library
Sometimes third-party projects you compile assume that some software components are available on the build machine. In particular it is common for popular libraries (libcrypto, libssl etc.).

To list which files from a library can or cannot be opened by a linker, run the `ld` command with the `--verbose` switch.

```shell
ld --library=ssl --verbose
```

### Make packages available for download
Sending executable files and shell scripts via email is not allowed for security considerations, so we fall back to cloud storages or pendrives. Unfortunately, both solutions have significant disadvantages. Uploading files to a distant data center and generating a shareable link requires extra effort, while in the pendrive approach, you risk loosing it. In most cases it may be a much faster to setup a local http server. If Apache is already installed on your machine, entire effort is to copy the file into the /var/www/html directory.

```shell
sudo make install --assume-yes apache2
sudo cp filename /var/www/html
```

The file will be available using the http://hostname:80/filename url. To read more about Apache HTTP Server and its configuration, visit the [project site](http://httpd.apache.org/).