# Setup a Debian/Ubuntu Machine

Instructions were tested on Debian 8.7 (jessie).

```shell
$ lsb_release -a
No LSB modules are available.
Distributor ID: Debian
Description:    Debian GNU/Linux 8.7 (jessie)
Release:        8.7
Codename:       jessie
$ uname -a
Linux gwb17102 3.16.0-4-amd64 #1 SMP Debian 3.16.39-1 (2016-12-30) x86_64 GNU/Linux
```


### Install basic command line utilities
```shell
$ su -
$ apt-get install curl vim xclip sudo git
$ exit
```


### Enable Autologin
```shell
$ su -
$ cp /etc/gdm3/daemon.conf /etc/gdm3/daemon.conf.back
$ vim /etc/gdm3/daemon.conf
# Under [daemon] entry uncomment these two lines:
#
# AutomaticLoginEnable = true
# AutomaticLogin = user1
$ exit
```


### Install Virtual Box Additions
```shell
$ su -
$ apt-get update
# Install latest critical and security updates
$ apt-get upgrade
$ apt-get install build-essential module-assistant
$ m-a prepare
# Click on 'Install Guest Additions' from the 'Devices' menu in VirtualBox
$ mount /media/cdrom
$ sh /media/cdrom/VBoxLinuxAdditions.run
$ reboot
```


### Setup SSH keys and register them in GitHub
```shell
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
$ eval `ssh-agent`
$ ssh-add ~/.ssh/id_rsa
$ xclip < ~/.ssh/id_rsa.pub
$ sensible-browser https://github.com/settings/keys
```

#### Setup SSH forwarding
```shell
$ hostname
$ domainname
$ vim ~/.ssh/config
# Register your local host Machine
# Host $(hostname)
#    ForwardAgent yes    
```

To get more understanding about SSH forwarding read [the article](http://www.unixwiz.net/techtips/ssh-agent-forwarding.html).


### Install Chrome
```shell
$ su -
$ wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
$ sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
$ apt-get update 
$ apt-get install google-chrome-stable
$ exit
```


### Install Visual Studio Code
```shell
$ su -
$ wget -q -O vscode.deb https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable
$ dpkg -i vscode.deb
$ apt-get install -f
$ exit
```

Consider installing useful for Python and Latex.
```shell
$ code --install-extension donjayamanne.python
$ code --install-extension ms-vscode.latex
$ code --install-extension mathiasfrohlich.latexcompile
$ code --install-extension ajshort.latex-preview
$ code --install-extension alefragnani.Bookmarks
$ code --install-extension ms-vscode.cpptools
$ code --install-extension vector-of-bool.vscode-cmake-tools
```

### Install Latex
```shell
$ su -
$ apt-get install textlive-full
$ exit
```


### Install Google's Operations Research tools
```shell
$ su -
$ apt-get install git bison flex python-setuptools python-dev autoconf \
libtool zlib1g-dev texinfo help2man gawk g++ curl texlive cmake subversion python3-dev
# Python developer libraries are installed in /usr/include instead of /usr/local/include
ln -sf /usr/include/python2.7 /usr/local/include/python2.7
ln -sf /usr/include/python3.4 /usr/local/include/python3.4
$ exit
$ git clone https://github.com/google/or-tools & cd or-tools
$ make third_party
$ make cc pyhon
$ make test_python
```

### Switch Git origin to SSH access
```
$ git remote set-url origin git@github.com:pmateusz/or-tools.git
```

# Useful commands

| Command | Example |
| --- | --- |
| whoami | `whoami` |
| hostname | `hostname` |
| tar | `tar -xvf example.tar.gz` |
| which | `which echo` |
| file | `file \etc\sudoers` |
| exit | `exit` |
| su | ` su -` |
| reboot | `reboot` |
| xclip | `xclip < ~/.ssh/id_rsa` |
| domainname | `domainname` |
| echo | `echo "$SSH_AUTH_SOCK"` |
| ssh | `ssh -T git@github.com` |

# Torque Resource Manager
This section will guide you through the process of installation and configuration of the Torque Server.
The installation will be 
Instructions below were executed on Debian Jessie. If you switch to a different distribution the package names may change, as well as instruction how to manage services.

[Torque 6.1.0](http://wpfilebase.s3.amazonaws.com/torque/torque-6.1.0.tar.gz)

## Dependencies 

Install required dependency packages.

| Package Name     | Dependency  |
| ---------------- | ----------  |
| chkconfig        | Runtime     |
| libxml2-dev      | Runtime     |
| libssl-dev       | Runtime     |
| openssl          | Runtime     |
| tcl-dev          | Runtime     |
| tk-dev           | Runtime     |
| tcllib           | Runtime     |
| tclx             | Runtime     |
| hwloc            | Runtime     |
| cgroup-bin       | Runtime     |
| cgroup-tools     | Runtime     |
| cpuset           | Runtime     |
| libboost-all-dev | Runtime     |
| gcc              | Compilation |
| g++              | Compilation |
| libtool          | Compilation |
| make             | Compilation |

## Configuration

Review [Customizing the Install](http://docs.adaptivecomputing.com/torque/6-1-0/adminGuide/help.htm#topics/torque/1-installConfig/customizingTheInstall.htm%3FTocPath%3D2%2520Installation%2520and%2520Configuration%7CAdvanced%2520Configuration%7C_____1) for the complete list of supported configuration options.

In the following commands you are supposed to specify the installation directory of the hwloc and tcl packages. These directories can be found using the following command.
```
$ dpkg -L tcl-dev
```

```
$ wget http://wpfilebase.s3.amazonaws.com/torque/torque-6.1.0.tar.gz
$ tar -xvzf torque-6.1.0.tar.gz
$ cd torque-6.1.0
$ ./configure --enable-cgroups --enable-fast-install --enable-gcc-warnings --enable-gui --enable-shared --enable-static --enable-syslog --with-scp --with-hwloc-path=/usr/bin  --with-tcl=/usr/lib
$ make
$ make install
$ make packages
```

# Configure Server

During default server configuration I came across the following error, which based on the number of Google answers is a common problem.
Solution provided below is the one that worked for me.

```
$# ./torque.setup root
Currently no servers active. Default server will be listed as active server. Error  15133
Active server name: gwb17102  pbs_server port is: 15001
trqauthd daemonized - port /tmp/trqauthd-unix
trqauthd successfully started
initializing TORQUE (admin: root@gwb17102)

You have selected to start pbs_server in create mode.
If the server database exists it will be overwritten.
do you wish to continue y/(n)?Y
root     31179     1  0 14:23 ?        00:00:00 pbs_server -t create
Max open servers: 9
qmgr obj= svr=default: Bad ACL entry in host list MSG=First bad host: gwb17102
ERROR: cannot set TORQUE admins
$ 
```

### Set TORQUE_HOME environment variable
Set `TORQUE_HOME` environment variable in `/etc/profile.d/torque.sh`.

### Register trqauthd as service
```
cd <installation-directory>
cp contrib/init.d/trqauthd /etc/init.d
chkconfig --add trqauthd
```

Ensure `/etc/ld.so.conf.d/torque.conf` `contains /usr/local/lib`
```
tail /etc/ld.so.conf.d/torque.conf
```

### Register pbs_server as service
```
$ cp /usr/local/sbin/pbs_server /etc/init.d/
$ chkconfig --add pbs_server
```

### Execute torque.config with both username and domain arguments
```
$ cd <installation-directory>
$ domainname
$ ./torque.setup root *.ds
```

Ensure that the default server parameters suit your needs.

```
$ qmgr -c 'p s'
```

Specific options can be changed in the following way.

```
$ qmgr -c "set server scheduling=true"
$ qmgr -c "create queue batch queue_type=execution"
$ qmgr -c "set queue batch started=true"
$ qmgr -c "set queue batch enabled=tr
$ qmtr
$ > set queue batch enabled=tr
$ > quit
$
```



## Get details of hardware resources available on the server
| Command    | Comment                                  |
|------------|------------------------------------------|
| `free -mt` | List available memory in MB              |
| `vmstat`   | List available info about CPU and memory |
| `nproc`    | List number of processors                |
| `lscpu`    | List detailed info about CPU             |


## Log without a password
```
ssh-copy-id user@hostname.domain
```


# TODO: Write how to change root password. How root account is done in Linux.