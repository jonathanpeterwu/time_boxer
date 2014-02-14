require 'Time'
require_relative 'model'
require_relative 'viewer'

class TimeBoxView
    def self.eggtimer(time)
      p "Your timebox has started, your alarm will go off in #{time} minutes"
    end

    def self.twilio(number)
      p "Your timebox has been set and you will be sent a reminder at your number: #{number}"
    end

    def self.call(number)
      p "Your timebox has been set and you will be sent a call reminder at your number : #{number}"
    end

    def self.all_messages(time)
      p "Congrats your time box has started and your alarm will go off in #{time} minutes, we have also sent you a text to remind you about your timebox"
    end

    def self.invalid
      p "you done fucked up"
    end
end