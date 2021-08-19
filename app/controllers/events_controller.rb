class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  # Not sure what this should be or if it needs to be here?
  def new
    @event = Event.new
  end

  def create
    @event = current_user.build_event(event_params)
  end

  
  private
    def event_params
      params.require(:event).permit(:date)
    end
end
