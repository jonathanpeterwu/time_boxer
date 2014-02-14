require 'rspec'
require_relative '../../controller'

describe "twilio" do
  it "should text you that a reminder has been set" do
   twilio = TimeBox.new(View, TimeReminder.new)
   twilio.testing = true
   expect(twilio.handle_response).to eq("Your timebox has been set and you will be sent a reminder at your number: +18183379884")
  end
end