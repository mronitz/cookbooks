# Install new repo for PHP 7
execute 'add-apt-repository ppa:ondrej/php' do
    action :run
end

execute 'apt-get update' do
    action :run
end

execute 'apt-get -y install php7.0 libapache2-mod-php7.0 php7.0-intl php7.0-mbstring php7.0-curl php-memcache php-memcached php7.0-gd php7.0-gmp php7.0-mcrypt php7.0-mysql php7.0-json htop --force-yes' do
    action :run
end

execute 'a2dismod php5' do
    action :run
end

execute 'a2enmod php7.0' do
    action :run
end

execute 'service apache2 restart' do
    action :run
end
