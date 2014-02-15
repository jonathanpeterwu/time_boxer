require 'time'

module CronJobs

  module_function

  def cron_converter(time) #returns string of now in cronspk
    cron_string = "#{time.min} #{time.hour} #{time.day} #{time.wday} #{time.month}"
  end

  def cron_timer(reminder_details)
    raw_time = reminder_details.cron_time + (reminder_details.time.to_i*60)
    cron_string = cron_converter(raw_time)
  end

  def cron_open(model, script)
    time = cron_timer(model)
    job = File.open('temp_crontab.txt', 'w')
    job << "#{time} ruby /Users/apprentice/desktop/time_boxer/#{script} #{model.time} #{model.reminder} #{model.phone}"
    job.close
    system "crontab temp_crontab.txt"
    system "rm temp_crontab.txt"
    system "crontab -l"
  end

  def cron_close_all_jobs(minutes_from_now_plus)
    end_job = File.open('temp_crontab.txt', 'w')
    # end_job << "#{minutes_from_now_plus} crontab -r" #if our goal is to clear the file of all cronjobs, opening and closing in write mode should do it
  ensure
    end_job.close
  end

end

