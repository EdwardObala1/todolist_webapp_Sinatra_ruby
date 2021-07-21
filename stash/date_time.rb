class EventTimer
  require 'date'

  def initialize(start_date, end_date,expiry_time)
    @start_date = Date.parse(start_date)
    @end_date = Date.parse(end_date)
    @expiry_time = expiry_time
  end

  def get_date_entry
    [@start_date.to_s, @end_date.to_s]
    if @start_date.year == @end_date.year
      if @start_date.yday < @end_date.yday
        "save"
      else
        "The end date has to be larger than the start date"
      end
    elsif @start_date < @end_date
      # proceed and save 
      "save"     
    else
      "The end date has to be larger than the start date"
    end
  end

  def check_time
  # get current time and subtract from end time then build a counter
    current_time = Time.now
  # time_to_take = 
  end
end