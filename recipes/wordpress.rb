# wordpressのパッケージダウンロード
remote_file "/tmp/wordpress-4.2.2-ja.tar.gz" do
  source "https://ja.wordpress.org/wordpress-4.2.2-ja.tar.gz"
  owner 'root'
  group 'root'
  mode '0644'
end

# wordpress用のドキュメントディレクトリを作成
directory "/var/www/html/wordpress" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

# パッケージの展開
bash 'deploy_package' do
  cwd "/tmp"
  code <<-EOH
    tar -xzvf wordpress-4.2.2-ja.tar.gz
    cp -a wordpress/* /var/www/html/wordpress/
    EOH
  not_if { ::File.exists?("/var/www/html/wordpress/index.php") }
end

# wp-config.phpを配置
cookbook_file "/var/www/html/wordpress/wp-config.php" do
  source "wp-config.php"
  owner "root"
  group "root"
  action :create
end

# DB作成
execute "create-db" do
  command "mysql < /tmp/create-wordpress.sql"
  action :nothing
end

# DB作成用のスクリプトファイルを配置
cookbook_file "/tmp/create-wordpress.sql" do
  source "create-wordpress.sql"
  owner "root"
  group "root"
  action :create
  notifies :run, "execute[create-db]", :immediately
end
