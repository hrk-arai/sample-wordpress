require 'openssl'
def secure_password(length = 20)
  pw = String.new
  while pw.length < length
    pw << ::OpenSSL::Random.random_bytes(1).gsub(/\W/, '')
  end
  pw
end

remote_file "/tmp/wordpress-4.2.2-ja.tar.gz" do
  source "https://ja.wordpress.org/wordpress-4.2.2-ja.tar.gz"
  owner 'root'
  group 'root'
  mode '0644'
end

#make wordpress dir
directory "/var/www/html/wordpress" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

#deploy package
bash 'deploy_package' do
  cwd "/tmp"
  code <<-EOH
    tar -xzvf wordpress-4.2.2-ja.tar.gz
    cp -a wordpress/* /var/www/html/wordpress/
    EOH
  not_if { ::File.exists?("/var/www/html/wordpress/index.php") }
end

#make wp-config.php
template "/var/www/html/wordpress/wp-config.php" do
  source "wp-config.php.erb"
  owner "root"
  group "root"
  action :create
end

#set mysql query
execute "create-db" do
  command "mysql < /tmp/create-wordpress.sql"
  action :nothing
end

#make create-wordpress.sql
template "/tmp/create-wordpress.sql" do
  source "create-wordpress.sql.erb"
  owner "root"
  group "root"
  action :create
  notifies :run, "execute[create-db]", :immediately
end
