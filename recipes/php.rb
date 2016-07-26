# パッケージインストール
%w{php php-mysql}.each do |package|
  package "#{package}" do
    action :install
    notifies :reload, "service[httpd]"
  end
end
