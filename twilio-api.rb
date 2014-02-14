require 'rubygems'
require 'twilio-ruby'


module TwilioTexter

  extend self

  def send_message(time, reminder, number)
    account_sid = 'ACb13450bab258e762b6e3eb2f0aad33cb'
    auth_token = '48ef7f7e8628fcc1869e36b816a997bf'
    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.account.messages.create({:body => "Your timebox has been set for #{time} for this task #{reminder} at your number: #{number}",
      :from => "+17478004717",
      :to => number})
  end
end