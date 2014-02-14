# Pseudocode
# object -> time and a reminder which is a string
# this should wrap a data
# class? add a method or two --> changing things to a symbol
#input: 30min ARGV[0],   "  asdlaksdalsdkja " ARGV[1].zip.split_input('')
#output:

class TimeReminder

  attr_reader :time, :reminder, :phone
  def initialize
    @time = "red"   # ARGV[1]
    @reminder = "hello" #ARGV[2]
    @phone = "+18183379884" #ARGV[3]

    raise TypeError.new("You must input an integer type for time input") unless /^\d+$/.match(@time.to_s)
  end

end

