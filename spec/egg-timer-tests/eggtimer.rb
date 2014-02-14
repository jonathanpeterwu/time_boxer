require 'rspec'
require_relative '../../controller.rb'

describe "egg_timer" do
  it "the second argument should be a digit not a word" do
    #egg.model.time == "red"
    expect{TimeReminder.new}.to raise_error(TypeError)
  end

  it "should open the correct url" do
    #egg.model.time == 20
    egg = TimeBox.new(View, TimeReminder.new)
    egg.testing = true
    expect(egg.handle_response).to eq("Your timebox has started, your alarm will go off in 20 minutes")
  end

end