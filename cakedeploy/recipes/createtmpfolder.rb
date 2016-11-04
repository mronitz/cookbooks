directory "/srv/www/#{node[:appname]}/current/tmp" do
  mode 0755
  owner 'apache'
  group 'apache'
end

directory "/srv/www/#{node[:appname]}/current/logs" do
  mode 0755
  owner 'apache'
  group 'apache'
end

link "/srv/www/#{node[:appname]}/current/webroot/uploads" do
  to "/srv/www/#{node[:appname]}/uploads"
end
