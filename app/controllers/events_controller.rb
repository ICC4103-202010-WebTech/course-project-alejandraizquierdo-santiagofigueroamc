class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @user = User.find(params[:user_id])
    @event = Event.new(event_params)
    @event.user = @user
    respond_to do |format|
      if @event.save
        format.html { redirect_to @user, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to user_events_url(@user), notice: 'Ticket type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :address, :description, :select_manual, :final_date, :user_id)
  end
end
