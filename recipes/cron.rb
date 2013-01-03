CRON = node["gravitybackup"]["cron"]

cron "gravity-backup" do
  minute  CRON["minute"]
  hour    CRON["hour"]
  day     CRON["day"]
  month   CRON["month"]
  weekday CRON["weekday"]
  command "/usr/sbin/gravity-backup.sh -a"
end
