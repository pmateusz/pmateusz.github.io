## Setup Local Package Repository

Server
```shell
apt-get install apache2
mkdir -p /var/www/deb/amd64
cd /var/www/deb/
dpkg-scanpackages amd64 | gzip -9c > amd64/Packages.gz
sudo ln -s /var/www/deb deb
```

## Optional SSL support
http://unix.stackexchange.com/questions/31378/apache2-invalid-command-sslengine
https://www.sslshopper.com/article-how-to-create-and-install-an-apache-self-signed-certificate.html

sudo a2enmod ssldeb/amd64/
sudo a2ensite default-ssl
sudo /etc/init.d/apache2 restart

openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout local-apt-get.key -out local-apt-get.crt
// watchman@node2:/etc/apache2/sites-enabled$
<VirtualHost test.org:443>
        DocumentRoot /var/www/
        SSLEngine on
        SSLCertificateFile /home/test/Applications/Apache2/local-apt-get.crt
        SSLCertificateKeyFile /home/test/Applications/Apache2/local-apt-get.key
        SSLCertificateChainFile /home/test/Applications/Apache2/local-apt-get.crt
</VirtualHost>



[Source](https://www.sslshopper.com/article-how-to-create-and-install-an-apache-self-signed-certificate.html)

Client
```
/etc/apt/sources.list
# add line deb http://server/deb/ amd64/
apt-get update
```

[Source](http://askubuntu.com/a/184340)

## CMake compilation
./bootstrap --system-curl
 cpack -G DEB

[Source](http://stackoverflow.com/a/33512778)

# Use pssh, ssh-copy-id, pgrep

# Apache with SSL support

# Install deamon

# Process photos minimize web page assets

[source](https://www.cyberciti.biz/faq/find-out-if-package-is-installed-in-linux/).

copy license into example
tar -czf o2cpp-examples.tar.gz examples
scp o2cpp-examples.tar.gz watchman@server1.torque.ccds.org:~/gwb17102
ssh watchman@server1.torque.ccds.org