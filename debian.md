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


### Install Vritual Box Additions
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