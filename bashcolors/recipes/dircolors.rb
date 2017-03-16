execute 'wget -O /home/ubuntu/.dircolors https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark' do
    action :run
end

execute 'mkdir -p /home/ubuntu/.vim/autoload /home/ubuntu/.vim/bundle' do
    action :run
end

execute 'curl -LSso /home/ubuntu/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim' do
    action :run
end

execute 'git clone git://github.com/altercation/vim-colors-solarized.git /home/ubuntu/.vim/bundle/vim-colors-solarized' do
    action :run
    not_if {Dir.exist?("/home/ubuntu/.vim/bundle/vim-colors-solarized") }
end

template "/home/ubuntu/.vimrc" do
    source "vimrc.erb"
    mode 0664
    owner 'ubuntu'
    group 'ubuntu'
end