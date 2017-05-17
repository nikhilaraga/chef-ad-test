#
# Cookbook Name:: rename-computer-ad-join
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

powershell_script 'ad-join' do
  code <<-EOH
  Get-NetAdapter | Set-DnsClientServerAddress -ServerAddresses '#{node['rename-computer-ad-join']['DomainServerIP']}'
  $NewHost = '#{node['rename-computer-ad-join']['NewHostName']}'
  Add-Computer -DomainName '#{node['rename-computer-ad-join']['DomainName']}' -Credential (New-Object System.Management.Automation.PSCredential('#{node['rename-computer-ad-join']['DomainUserName']}',(ConvertTo-SecureString '#{node['rename-computer-ad-join']['DomainUserPassword']}' -AsPlainText -Force))) -NewName $NewHost
  Restart-Computer
  EOH
end