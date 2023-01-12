class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true
  
  def date_format
    date.strftime("%r")
  end

  def time_format
    time.strftime("%H:%M")
  end
end
