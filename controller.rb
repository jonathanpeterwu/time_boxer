

#Pseudocode - controller
# receives : input model class TimeReminder.new("3pm","remindme")
# output : send email/text/call reminder, chron reminder on terminal stuff
# output : confirming message to the user
require_relative 'viewer'
require_relative 'model'
require_relative 'twilio-api'
require 'twilio-ruby'

class TimeBox

  include TwilioTexter

  attr_accessor :action, :testing, :display, :model

  def initialize(view_class, model_class) # intiialize both display and model
    @display = view_class
    @model = model_class
    @action = ARGV[0]
    @testing = false
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

  def egg_timer(reminder_in)

    eggtimer_url = "http://e.ggtimer.com/#{reminder_in}%20minutes"
    `open #{eggtimer_url}` unless @testing
  end

  # def cron_job
  # end

end


# first = TimeBox.new(View, TimeReminder.new)

#methods


# UI here are your options with timebox
# open menu
# get user input method
# .send(:method_name)


#timebox.chronjob(user input) => send out a bash command to do something
#timebox.twilio.text(message, phone number) => puts out a message to a phone
#timebox.eggtimer(user input) => puts out a URL