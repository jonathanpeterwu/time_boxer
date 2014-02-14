
class TimeReminder

  attr_accessor :time, :reminder, :phone, :cron_time
  def initialize
    @time = ARGV[1]
    @reminder = ARGV[2]
    @phone = ARGV[3] #"+18183379884"
    @cron_time = DateTime.now.to_time
  end
end

