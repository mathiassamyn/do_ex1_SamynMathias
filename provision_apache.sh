#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 -y

sudo rm -f /etc/apache2/sites-enabled/000-default.conf
sudo ln -fs /vagrant/do_ex1_site /etc/apache2/sites-enabled

#Het volgende moet omdat er iets fout ging wanneer ik de DocumentRoot (in do_ex1_test) aanpaste 
#naar de vagrantmap. Dit is na een tijd gelukt, maar ik blijf deze instellingen behouden, aangezien 
#dit een makkelijkere manier van werken is, omdat alle files nu zitten waar ze oorspronkelijk
#bedoeld waren om te zitten.
sudo rm -rf /var/www
sudo ln -fs /vagrant/www /var/www

sudo service apache2 restart
