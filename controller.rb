

#Pseudocode - controller
# receives : input model class TimeReminder.new("3pm","remindme")
# output : send email/text/call reminder, chron reminder on terminal stuff
# output : confirming message to the user


class TimeBox

  attr_reader :display, :model, :action

  def initialize(view_class, model_class) # intiialize both display and model
    @display = view_class
    @model = model_class
    @action = ARGV[0]
  end

  case action
  when "eggtimer"
    egg_timer(model)
    display.eggtimer
  when "twilio"
    twilio_text
    display.twilio
  when "all"
    eggtimer
    twilio_text
    display.all_messages
  else display.invalid
  end

  def twilio_text

  end

  def egg_timer(reminder_in)
    eggtimer_url = "http://e.ggtimer.com/#{reminder_in.time}%20minutes"
    `open #{eggtimer_url}`
    eggtimer_url
  end

  # def chron_job
  # end

end


first = TimeBox.new(View, TimeReminder.new)

#methods


# UI here are your options with timebox
# open menu
# get user input method
# .send(:method_name)


#timebox.chronjob(user input) => send out a bash command to do something
#timebox.twilio.text(message, phone number) => puts out a message to a phone
#timebox.eggtimer(user input) => puts out a URL