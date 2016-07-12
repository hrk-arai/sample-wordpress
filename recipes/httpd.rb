# httpdのパッケージインストール
package "httpd" do
  action :install
end

# httpdのサービスを起動、自動起動設定
service "httpd" do
  action [ :enable, :start ]
end

# httpd.confファイルを生成
template "/etc/httpd/conf/httpd.conf" do
  source "httpd.conf.erb"
  owner "root"
  group "root"
  mode 0644
  action :create
  notifies :reload, "service[httpd]"
end
