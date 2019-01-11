#!/bin/bash

#update
apt update
echo updated.....

#install apache2
apt install apache2
echo apache2 installed

#install packages
apt install apt-transport-https ca-certificates curl software-properties-common
echo packages installed

#curl GPG key
curl -fsSL https://packages.sury.org/php/apt.gpg | apt-key add -

#add php repository
add-apt-repository "deb https://packages.sury.org/php/ $(lsb_release -cs) main"
echo repository added

#update
apt update
echo updated.....

#install php
apt install php7.2-common php7.2-cli
echo php installed
php -v

#install php on apache2
apt install php7.2 libapache2-mod-php

#restart apache2
systemctl restart apache2
echo apache restarted....


