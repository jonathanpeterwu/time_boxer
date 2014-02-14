require 'time'

module CronJobs

  def cron_converter(time) #returns string of now in cronspk
    cron_string = "#{time.min} #{time.hour} #{time.day} #{time.wday} #{time.month}"
  end

  def cron_timer(minutes_from_now)
    raw_time = DateTime.now.to_time + (minutes_from_now.to_i*60)
    cron_string = cron_converter(raw_time)
  end

  def cron_open(script)
    job = File.open('temp_crontab.txt')
    job << "#{cron_string} ruby #{script}"
    # job = File.open #still need to write crontab protocol
  ensure
    `crontab temp_crontab.txt`
    job.close
  end

  def cron_close_all_jobs(minutes_from_now_plus)
    end_job = File.open('temp_crontab.txt', 'w')
    # end_job << "#{minutes_from_now_plus} crontab -r" #if our goal is to clear the file of all cronjobs, opening and closing in write mode should do it
  ensure
    end_job.close
  end

end

