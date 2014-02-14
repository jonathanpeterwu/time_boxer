require 'rspec'
require_relative '../../controller'

describe "when you don't pass anything in" do
    it "should raise an error and end the program" do
      fail = Timebox.new(View, TimeReminder.new)
      fail.testing = true
      expect(fail.handle_response).to eq("you done fucked up")
    end
end
