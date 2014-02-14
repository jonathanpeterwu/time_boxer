# Pseudocode
# object -> time and a reminder which is a string
# this should wrap a data
# class? add a method or two --> changing things to a symbol
#input: 30min ARGV[0],   "  asdlaksdalsdkja " ARGV[1].zip.split_input('')
#output:

class TimeReminder

  attr_accessor :time, :reminder, :phone, :cron_time
  def initialize
    @time = ARGV[1]
    @reminder = ARGV[2]
    @phone = ARGV[3] #"+18183379884"
    @cron_time = Time.now.to_time
  end
end

