require 'rspec'
require_relative '../../controller'

describe "cron_job" do
    it "the cron object time (in minutes) should be (Time.now)" do
      cronjob = TimeBox.new(View, TimeReminder.new)
      cronjob.model.time = 30
      cronjob.testing = true
      expect(cronjob.cron_time.min).to eq(Time.now.to_time.min)
    end

    it "the cron object time (in minutes) should be (Time.now)" do
      cronjob = TimeBox.new(View, TimeReminder.new)
      cronjob.model.time = 30
      cronjob.testing = true
      expect(cronjob.cron_time.min).to eq(Time.now.to_time.min)
    end
end
