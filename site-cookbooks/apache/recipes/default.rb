#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do 
 action :install
end

#service "httpd" do
# action [ :enable, :start ]
#end
bash 'service_setting' do
  user 'root'
  code <<-EOH
    systemctl restart httpd.service
    systemctl enable httpd.service
  EOH
end
