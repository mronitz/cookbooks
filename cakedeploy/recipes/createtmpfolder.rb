directory "/srv/www/#{node[:appname]}/current/tmp" do
  mode 0755
  owner 'www-data'
  group 'www-data'
end

directory "/srv/www/#{node[:appname]}/current/logs" do
  mode 0755
  owner 'www-data'
  group 'www-data'
end

link "/srv/www/#{node[:appname]}/current/webroot/uploads" do
  to "/srv/www/#{node[:appname]}/uploads"
end
