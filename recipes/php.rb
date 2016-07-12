#package install
%w{php php-mysql}.each do |package|
  package "#{package}" do
    action :install
  end
end
