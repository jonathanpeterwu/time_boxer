require 'rspec'
require_relative '../../controller.rb'

describe "egg_timer" do
  it "the second argument should be a digit not a word" do
    egg = TimeBox.new(TimeBoxView, TimeReminder.new)
    egg.model.time = "red"
    egg.action = "eggtimer"
    egg.testing = true
    expect{egg.handle_response}.to raise_error(TypeError)
  end

  it "The custom error message should be present if time is not formatted correctly" do
    egg = TimeBox.new(TimeBoxView, TimeReminder.new)
    egg.model.time = "red"
    egg.action = "eggtimer"
    egg.testing = true
    expect{egg.handle_response}.to raise_error("You must input an integer type for time input")
  end

  it "should open the correct url with numeric string input" do
    egg = TimeBox.new(TimeBoxView, TimeReminder.new)
    egg.model.time = "20"
    egg.action = "eggtimer"
    egg.testing = true
    expect(egg.handle_response).to eq("Your timebox has started, your alarm will go off in 20 minutes")
  end

  it "should open the correct url" do
    egg = TimeBox.new(TimeBoxView, TimeReminder.new)
    egg.model.time = 20
    egg.action = "eggtimer"
    egg.testing = true
    expect(egg.handle_response).to eq("Your timebox has started, your alarm will go off in 20 minutes")
  end

end