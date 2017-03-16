template "/etc/apache2/conf-available/zzz-default-config.conf" do
    source "zzz-default-config.erb"
    mode 0664
    owner 'root'
    group 'root'
end

execute 'a2enconf zzz-default-config' do
    action :run
end

execute 'service apache2 restart' do
    action :run
end
