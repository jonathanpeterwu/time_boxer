require 'rspec'
require_relative '../../controller'

describe "twilio" do

  it "the second argument should be a digit not a word" do
    twilio = TimeBox.new(View, TimeReminder.new)
    twilio.model.time = "red"
    twilio.action = "twilio"
    twilio.model.phone = "+18183379884"
    twilio.testing = true
    expect{twilio.handle_response}.to raise_error(TypeError)
  end

  it "The custom error message should be present if time is not formatted correctly" do
    twilio = TimeBox.new(View, TimeReminder.new)
    twilio.model.time = "red"
    twilio.action = "twilio"
    twilio.model.phone = "+18183379884"
    twilio.testing = true
    expect{twilio.handle_response}.to raise_error("You must input an integer type for time input")
  end

  it "should text you that a reminder has been set" do
    twilio = TimeBox.new(View, TimeReminder.new)
    twilio.model.time = "20"
    twilio.action = "twilio"
    twilio.model.phone = "+18183379884"
    twilio.testing = true
    expect(twilio.handle_response).to eq("Your timebox has been set and you will be sent a reminder at your number: +18183379884")
  end

  it "should text you that a reminder has been set" do
    twilio = TimeBox.new(View, TimeReminder.new)
    twilio.model.time = 20
    twilio.action = "twilio"
    twilio.model.phone = "+18183379884"
    twilio.testing = true
    expect(twilio.handle_response).to eq("Your timebox has been set and you will be sent a reminder at your number: +18183379884")
  end
end