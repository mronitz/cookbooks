template "/home/ubuntu/.profile" do
    source "profile.erb"
    mode 0664
    owner 'ubuntu'
    group 'ubuntu'
end
