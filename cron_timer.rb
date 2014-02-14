module CronJobs

  def cron_converter(time) #returns string of now in cronspk
    cron_string = "#{time.min} #{time.hour} #{time.day} #{time.wday} #{time.month}"
  end

  #so i added an additional input in cron_timer to accept a time object
  #because i cant actually test DateTime.now without literally rewriting the
  #logic for the tests. if it accepts a time object, i can pass it
  #DateTime.new which is always the same, and i dont see negative sideeffects
  #from passing it the DateTime object generated in the model. i think the way
  #we had it before is more kosher, but does anyone object to keeping this
  #way? i think it will be fine, since the user is never going to interact
  #with it -Phil V

  # def cron_timer(minutes_from_now, script)
  #   raw_time = DateTime.now + (minutes_from_now*60)
  def cron_timer(minutes_from_now,time_object, script)
    raw_time = time_object + (minutes_from_now.to_i*60)
    cron_string = cron_converter(raw_time)
  end

  #recommend making this a separate method -Phil V
  def cron_open
    # jo = File.open #still need to write crontab protocol
  end

  def cron_close_all_jobs

  end
end
