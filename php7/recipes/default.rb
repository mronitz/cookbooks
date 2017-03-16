# Install new repo for PHP 7
execute 'add-apt-repository ppa:ondrej/php' do
    action :run
end

execute 'sudo apt-get update' do
    action :run
end


#sudo add-apt-repository ppa:ondrej/php

#sudo apt-get update
#sudo apt-get install php7.0 libapache2-mod-php7.0 php7.0-intl php7.0-mbstring php7.0-curl php-memcache php-memcached php7.0-gd php7.0-gmp php7.0-mcrypt php7.0-mysql php7.0-json

#sudo a2dismod php5
#sudo a2enmod php7.0
#sudo service apache2 restart