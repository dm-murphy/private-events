class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    @event = @user.build_event(:user_id, :date)
  end

  def show
    @events = Event.all
  end
end
