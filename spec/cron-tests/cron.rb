require 'rspec'
require_relative '../../controller'
include CronJobs

describe "cron_job" do
    it "the cron object time (in minutes) should be (Time.now)" do
      cronjob = TimeBox.new(TimeBoxView, TimeReminder.new)
      cronjob.model.time = "30"
      cronjob.testing = true
      expect(cronjob.model.cron_time.min).to eq(DateTime.now.to_time.min)
    end

    it "the cron object time (in minutes) should be (Time.now)" do
      cronjob = TimeBox.new(TimeBoxView, TimeReminder.new)
      cronjob.model.time = 30
      cronjob.testing = true
      expect(cronjob.model.cron_time.min).to eq(DateTime.now.to_time.min)
    end
end

describe "cron_timer Module" do
  describe "cron_converter" do
    it "should output a string of cronspeak" do
      cron_time = DateTime.new.to_time
      expect(CronJobs.cron_converter(cron_time)).to eq("0 16 31 3 12")
    end
  end

  describe "cron_timer" do
    it "should increase the time by 'input_time' (integer)" do
      cron_time = DateTime.new.to_time
      increment_by = 30
      expect(CronJobs.cron_timer(increment_by, cron_time, "blah")).to eq("30 16 31 3 12")
    end

    it "should increase the time by 'input_time' (string)" do
      cron_time = DateTime.new.to_time
      increment_by = "30"
      expect(CronJobs.cron_timer(increment_by, cron_time, "blah")).to eq("30 16 31 3 12")
    end
  end
end
