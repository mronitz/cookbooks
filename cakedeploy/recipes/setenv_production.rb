template "/srv/www/#{node[:appname]}/current/.htaccess" do
  source "htaccess.production.erb"
  mode 0664
  owner 'deploy'
  group 'www-data'
end
