default["gravitybackup"] = {
  "chefvm" => "chef-server",
  "chefip" => "169.254.123.2",
  "vmdiskloc" => "/opt/rpcs/chef-server.qcow2",
  "vmxmlloc" => "/opt/rpcs/chef-server.xml",
  "backupdir" => "/var/chef-backup",
  "corenum" => "4",
  "vcorenum" => "2",
  "cron" => {
    "minute" => "0",
    "hour" => "4",
    "day" => "*",
    "month" => "*",
    "weekday" => "0"
  }
}
