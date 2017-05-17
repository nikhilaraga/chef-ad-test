#
# Cookbook Name:: rename-computer-ad-join
# Author:: pavankumar.amballa@reancloud.com

# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Package uri for dnow

#Change the default admin email
#default["rename-computer-ad-join"]["secondaryIP"]  = '10.0.25.24'
#default["rename-computer-ad-join"]["NewClusterName"]  = 'cluster10'
default["rename-computer-ad-join"]["DomainUserName"]  = 'opis\adadmin'
default["rename-computer-ad-join"]["DomainUserPassword"]  = 'rean@123'
default["rename-computer-ad-join"]["DomainName"]  = 'opis.internal'
default["rename-computer-ad-join"]["DomainServerIP"]  = '10.0.25.152'
default["rename-computer-ad-join"]["NewHostName"]  = 'win-mytest'


