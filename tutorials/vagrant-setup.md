# Vagrant

Vagrant is a cross platform environment for automated management of virtual machines. Main advantage offered by Vagrant is a scripting language, an internal domain specific language hosted in Ruby, for a virtual machine provisioning. The language offers high level abstractions independent of specific virtual machine providers like Hyper-V or Virtual Box and provisioners such as Docker, Chef and Ansible. Vagrant scritps like any source code can fully benefit from all features offered by source code management systems like Git or SVN. They can be versioned, reviewed and shared.

Assuming that a developer of the provisioning script does not require explicit user interaction, which is a non-standard practice, a virtual machine can be created and configured using Vagrant in a fully automated fashion. To read more about Vagrant and its scripting language visit the [project site](https://www.vagrantup.com/).

Vagrant scripts are included in non-trivial articles to enable readers interested in reproducing results to do it avoiding extra hassle.

Although author uses the Virtual Box as a virtual machine provider, the scripts do not depend on a specific Virtual Box features and should be easily ported to any other available provider.

## Setup for Windows

Download and install [Virtual Box]https://www.virtualbox.org/wiki/Downloads(), [Vagrant](https://www.vagrantup.com/downloads.html) and [Git](https://git-scm.com/download/win). During Git installation select the option *"Use Git and optional Unix tools from the Windows Command Prompt"*.

This option will configure the installer to install [MinGW64 environment](http://www.mingw.org/) along with several command line utilities available in Linux. One of them is SSH client required by Vagrant for the virtual machine provisioning.

Ensure Vagrant and the SSH client are available in the command line.

```shell
>where ssh.exe
C:\Program Files\Git\usr\bin\ssh.exe

>git --version
git version 2.12.0.windows.1

>where vagrant
C:\HashiCorp\Vagrant\bin\vagrant.exe

>vagrant --version
Vagrant 1.9.2
```

The scripts were tested using *Virtual Box 5.1.14*, *Vagrant 1.9.2* and *Git 2.12.0*.
