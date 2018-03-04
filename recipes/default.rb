#
# Cookbook:: test_httpd
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd' do
action [:install]
end

group 'dhans'

user 'dhans' do
	group 'dhans'
	system true
end

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '700'
  user 'dhans'
  group 'dhans'
end