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

| Package Name     | Ubuntu Name            | Dependency  |
| ---------------- | ---------------------- | ----------- |
| chkconfig        | sysv-rc-conf           | Runtime     |
| libxml2-dev      |                        | Runtime     |
| libssl-dev       |                        | Runtime     |
| openssl          |                        | Runtime     |
| tcl-dev          |                        | Runtime     |
| tk-dev           |                        | Runtime     |
| tcllib           |                        | Runtime     |
| tclx             |                        | Runtime     |
| hwloc            |                        | Runtime     |
| cgroup-bin       |                        | Runtime     |
| cgroup-tools     | cgroup-lite libcgroup1 | Runtime     |
| cpuset           |                        | Runtime     |
| libboost-all-dev |                        | Runtime     |
| gcc              |                        | Compilation |
| g++              |                        | Compilation |
| libtool          |                        | Compilation |
| make             |                        | Compilation |

```shell
# Ubuntu command for trusty
$ sudo apt-get install gcc g++ libtool make
```

```shell
# Ubuntu command for trusty
$ sudo apt-get install libxml2-dev libssl-dev openssl tcl-dev tk-dev tcllib tclx hwloc cgroup-bin cpuset libboost-all-dev cgroup-lite libcgroup1 sysv-rc-conf
```


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
$ qmgr -c "set server auto_node_np=true"
$ qmgr -c "set queue batch enabled=true"
$ qmgr -c "set server default_queue=batch"
$ qmgr
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

# Configure Apache Server
Logs are stored in `/var/log/apache2`
Edit configuration `sudo vim /etc/apache2/apache2.conf`
Reboot `sudo /etc/init.d/apache2 restart`

### index.html
```
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="refresh" content="0; url=./debs/amd64" />
  <body>
  </body>
</html>

```
update-rc.d <service name> defaults
update-rc.d <service name> enable
### /etc/apache2/apache2.conf
```
<Directory /var/www/debs/amd64>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>

```

```
ln -s ../debs debs
```

## Add to the sudoers group
```shell
$ sudo adduser <username> sudo
```


## List size of paritions
```shell
$ lsblk
```

## Check the location of the symbolic link
```
readlink -f <link-file>
```

## Change hostname
sudo vim /etc/hostname
sudo vim /etc/hosts

# TODO: Write how to change root password. How root account is done in Linux.

## Check status of services
service --status-all

# Add node
sudo vim /var/spool/torque/server_priv/nodes

Create the service file in /etc/init.d/<service name>
chmod 755 /etc/init.d/<service name>
update-rc.d <service namre is my pagee> defaults
update-rc.d <service name> enable

tail -f <file_name>

pbsnodes -a 

qnodes
momctl -d 3 -h node01
unlink

TORQUE_HOME/mom_priv/config:
$pbsserver      headnode          # note: hostname running pbs_server
$logevent       255               # bitmap of which events to log


http://etutorials.org/Linux+systems/cluster+computing+with+linux/Part+III+Managing+Clusters/Chapter+17+PBS+Portable+Batch+System/17.6+Troubleshooting/

Important webpages:
http://stackoverflow.com/questions/1663953/get-the-domain-name-in-linux-c-programming
http://ubuntuhandbook.org/index.php/2014/04/change-hostname-ubuntu1404/
http://spaceart.wikispaces.com/CCDS
https://cmayes.wordpress.com/2012/12/15/single-host-torque-pbs/
http://docs.adaptivecomputing.com/torque/3-0-5/11.1troubleshooting.php
https://www.webmo.net/support/pbs_init
http://www.supercluster.org/pipermail/torqueusers/2014-October/017606.html
http://forum.pbsworks.com/index.php?/topic/150-get-list-of-queue-on-which-a-user-can-qsub/
https://www.google.co.uk/search?q=ubuntu+pbs_server+daemon+not+found&oq=ubuntu+pbs_server+daemon+not+found&aqs=chrome..69i57.7344j0j7&sourceid=chrome&ie=UTF-8
http://docs.adaptivecomputing.com/torque/4-1-7/Content/topics/11-troubleshooting/faq.htm
http://docs.adaptivecomputing.com/torque/4-2-7/Content/topics/12-appendices/torqueQuickStartGuide.htm
http://docs.adaptivecomputing.com/torque/6-1-0/adminGuide/help.htm#topics/torque/1-installConfig/specifyComputeNodes.htm%3FTocPath%3D2%2520Installation%2520and%2520Configuration%7CInitializing%252FConfiguring%2520Torque%2520on%2520the%2520Server%2520(pbs_server)%7C_____1
http://docs.adaptivecomputing.com/torque/3-0-5/a.ltorquequickstart.php
http://askubuntu.com/questions/299371/correct-way-to-install-a-custom-upstart-service
http://askubuntu.com/questions/86822/how-can-i-copy-the-contents-of-a-folder-to-another-folder-in-a-different-directo
https://jabriffa.wordpress.com/2015/02/11/installing-torquepbs-job-scheduler-on-ubuntu-14-04-lts/
update-rc.d -f <service> remove