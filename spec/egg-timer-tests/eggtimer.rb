require 'rspec'
require_relative '../../controller.rb'

describe "egg_timer" do
  it "should open the correct url" do
    egg = TimeBox.new(View, TimeReminder.new)
    expect(egg.egg_timer('20')).to.eq("http://e.ggtimer.com/20%20minutes")
  end
end