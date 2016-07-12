#
# Cookbook Name:: wordpress
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'sample-wordpress::php'
include_recipe 'sample-wordpress::httpd'
include_recipe 'sample-wordpress::mysql'
include_recipe 'sample-wordpress::wordpress'
