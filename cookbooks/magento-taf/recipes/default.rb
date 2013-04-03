#
# Cookbook Name:: magento-taf
# Recipe:: default
#
# Copyright 2013, Allan MacGregor
#
#

# Install packages
%w{ phpunit ant ant-optional xvfb }.each do |a_package|
  package a_package
end

execute "create selenium dir" do
  command "mkdir -p /opt/selenium"
  creates "/opt/selenium"
  action :run
end

execute "wget selenium server" do
  command "wget -P /opt/selenium http://selenium.googlecode.com/files/selenium-server-standalone-2.19.0.jar"
  action :run
end

execute "chmod selenium" do
  command "chmod +x /opt/selenium/selenium-server-standalone-2.19.0.jar"
  action :run
end

execute "run selenium" do
  command "java -jar /opt/selenium/selenium-server-standalone-2.19.0.jar &"
  action :run
end

execute "mtaf" do
  command "mkdir -p /opt/magento-taf"
  creates "/opt/magento-taf"
end

git "/opt/magento-taf" do
  repository 'git://github.com/magento/taf.git'
  reference "master"
  action :sync
end