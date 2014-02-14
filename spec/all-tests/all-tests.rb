require 'rspec'
require_relative '../../controller'

describe "all"  do
  it "should display egg timer and send text" do
    both = TimeBox.new(View, TimeReminder.new)
    both.testing = true
    expect(both.handle_response).to eq("Congrats your time box has started and your alarm will go off in 20 minutes, we have also sent you a text to remind you about your timebox")
  end
end