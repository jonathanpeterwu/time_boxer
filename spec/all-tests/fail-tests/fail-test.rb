require 'rspec'
require_relative '../../../controller'

describe "When an incorrect command is passed in (with correct time format)" do
    it "should raise an error and end the program" do
      fail = TimeBox.new(View, TimeReminder.new)
      fail.action = "fucked up"
      fail.model.time = 30
      fail.testing = true
      expect(fail.handle_response).to eq("you done fucked up")
    end
end
