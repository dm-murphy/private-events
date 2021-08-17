class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.build_event(event_params)
  end

  def show
    @events = Event.all
  end

  private
    def event_params
      params.require(:event).permit(:date)
    end
end
