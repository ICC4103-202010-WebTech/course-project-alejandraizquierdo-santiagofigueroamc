class EventsController < ApplicationController
  def index
    @events = Event.find(params[:user_id])
  end

  def new
    @event = Event.new
  end

  def create
    @user = User.find(params[:id])
    @event = @user.events.create(event_params)
    redirect_to event_path(@event)
  end

  private
  def event_params
    params.require(:event).permit(:title, :address, :description, :select_manual, :final_date)
  end
end
