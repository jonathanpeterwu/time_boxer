module CronJobs

  def cron_converter(time) #returns string of now in cronspk
    cron_string = "#{time.min} #{time.hour} #{time.day} #{time.wday} #{time.month}"
  end

  def cron_timer(minutes_from_now, script)
    raw_time = Time.now + (minutes_from_now*60)
    cron_string = cron_converter(raw_time)
    jo = File.open #still need to write crontab protocol
  end

end
