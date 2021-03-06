# require_relative 'run_timeboxer'
require 'twilio-ruby'
require 'date'
require_relative 'cron_timer'
require_relative 'twilio-api'
require_relative 'model'
require_relative 'viewer'

class TimeBox

  include TwilioTexter

  attr_accessor :action, :testing, :display, :model

  def initialize(view_class, model_class) # intiialize both display and model
    @display = view_class
    @model = model_class
    @action = ARGV[0]
    @testing = false
    # require 'debugger';debugger
    # handle_response(action)
  end

  def handle_response#(action)
    raise TypeError.new("You must input an integer type for time input") unless /^\d+$/.match(model.time.to_s)
    case action
    when "eggtimer"
      egg_timer(model.time)
      display.eggtimer(model.time)
    when "twilio"
      twilio_text
      display.twilio(model.phone)
    when "twilio_call"
      twilio_call
      display.call(model.phone)
    when "all"
      egg_timer(model.time)
      twilio_text
      display.all_messages(model.time)
    else
      display.invalid
    end
  end

  def twilio_text
    TwilioTexter.send_message(model.time, model.reminder, model.phone) unless @testing
  end

  def twilio_call
    TwilioTexter.call(model.phone) unless @testing
  end

  def egg_timer(reminder_in)
    eggtimer_url = "http://e.ggtimer.com/#{reminder_in}%20minutes"
    `open #{eggtimer_url}` unless @testing
  end

  # def cron_job
  # end

end


# first = TimeBox.new(TimeBoxView, TimeReminder.new)