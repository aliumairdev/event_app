class EventNotifyJob < ApplicationJob
  queue_as :default

  def perform(event)
    EventNotify.new(event).notify
  end
end
