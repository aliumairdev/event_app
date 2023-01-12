class EventNotify
  def initialize(event)
    @event = event
  end
  def notify
    # TODO
    flash[:notice] = "Event #{event.title} is about to start at #{event.time}"
  end
end
