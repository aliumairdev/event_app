module EventsHelper
  def format_date(date)
    date.strftime("%F")
  end

  def format_time(time)
    time.strftime("%I:%M %p")
  end
end
