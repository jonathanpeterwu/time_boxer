require 'rspec'
require_relative '../../controller'

describe "all"  do
  it "the second argument should be a digit not a word" do
    both = TimeBox.new(View, TimeReminder.new)
    both.model.time = "red"
    both.model.phone = "+18183379884"
    both.action = "all"
    both.testing = true
    expect{both.handle_response}.to raise_error(TypeError)
  end

  it "The custom error message should be present if time is not formatted correctly" do
    both = TimeBox.new(View, TimeReminder.new)
    both.model.time = "red"
    both.model.phone = "+18183379884"
    both.action = "all"
    both.testing = true
    expect{both.handle_response}.to raise_error("You must input an integer type for time input")
  end

  it "should open the correct url with numeric string input" do
    both = TimeBox.new(View, TimeReminder.new)
    both.model.time = "20"
    both.model.phone = "+18183379884"
    both.action = "all"
    both.testing = true
    expect(both.handle_response).to eq("Congrats your time box has started and your alarm will go off in 20 minutes, we have also sent you a text to remind you about your timebox")
  end

  it "should display egg timer and send text" do
    both = TimeBox.new(View, TimeReminder.new)
    both.model.time = 20
    both.model.phone = "+18183379884"
    both.action = "all"
    both.testing = true
    expect(both.handle_response).to eq("Congrats your time box has started and your alarm will go off in 20 minutes, we have also sent you a text to remind you about your timebox")
  end
end