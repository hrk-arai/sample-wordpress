# mysql-serverパッケージのインストール
package "mysql-server" do
  action :install
end


# mysqldサービス機能、自動機能設定
service "mysqld" do
  action [ :enable, :start ]
end

# my.cnfファイルの設置
template "/etc/my.cnf" do
  source "my.cnf.erb"
  action :create
end
