require 'time'

module CronJobs

  def cron_converter(time) #returns string of now in cronspk
    cron_string = "#{time.min} #{time.hour} #{time.day} #{time.wday} #{time.month}"
  end

  def cron_timer(minutes_from_now, script)
    raw_time = Time.now + (minutes_from_now*60)
    cron_string = cron_converter(raw_time)
    job = File.open('temp_crontab.txt')
    job << "#{cron_string} ruby #{script}"
    #call cron_timer to add cronjob 1 minute later that clears cronjob list

    #finally, this method needs to connect our contab to running cron
  ensure
    job.close

  end

  def cron_stop(minutes_from_now_plus)
    end_job = File.open('temp_crontab.txt')
    end_job << "#{minutes_from_now_plus} crontab -r" #will this work?
  ensure
    end_job.close
  end

end
