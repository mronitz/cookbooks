yum_package 'memcached' do
  action :install
end

yum_package 'php-pecl-memcached.x86_64' do
  action :install
end
