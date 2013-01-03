#
# Cookbook Name:: gravity-backup
# Recipe:: default
#
# Copyright 2012, Rackspace
#
# All rights reserved - Do Not Redistribute
#
template "/etc/default/gravity-backup.conf" do
  source "gravity-backup.conf.erb"
  mode 0400
  owner "root"
  group "root"
  variables({
    :chefvm => node[:gravitybackup][:chefvm],
    :chefip => node[:gravitybackup][:chefip],
    :vmdiskloc => node[:gravitybackup][:vmdiskloc],
    :vmxmlloc => node[:gravitybackup][:vmxmlloc],
    :backupdir => node[:gravitybackup][:backupdir],
    :corenum => node[:gravitybackup][:corenum],
    :vcorenum => node[:gravitybackup][:vcorenum]
  })
end

cookbook_file "/usr/sbin/gravity-backup.sh" do
  source "gravity-backup.sh"
  mode 0755
  owner "root"
  group "root"
end


cron "gravity-backup" do
  hour "23"
  minute "0"
#  weekday "0"
  command "/usr/sbin/gravity-backup.sh -a"
end
