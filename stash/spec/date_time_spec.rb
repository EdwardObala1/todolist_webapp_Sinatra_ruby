require 'rspec'
require_relative '../lib/date_time'

RSpec.describe EventTimer do

  describe "checks if date entry is valid and" do
    it 'checks if date is parsed and usable in the same year' do
      timer = EventTimer.new("10 December 2021","10 December 2025",'8:00 am')
      expect(timer.get_date_entry).to eq("save")
    end

    it 'checks if date is parsed and usable in the same year' do
      timer = EventTimer.new("10 December 2026","10 December 2025",'8:00 am')
      expect(timer.get_date_entry).to eq("The end date has to be larger than the start date")
    end
  end

  describe "checks for time" do
    xit 'checks if date is parsed and usable in the same year' do
      timer = EventTimer.new("10 December 2026","10 December 2025",'8:00 am')
      expect(timer.get_timer_diff).to eq("The end date has to be larger than the start date")
    end
  end
end
