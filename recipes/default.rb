#
# Cookbook Name:: wordpress
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe wordpress::apache
include_recipe wordpress::php
include_recipe wordpress::mysql
include_recipe wordpress::wordpress
