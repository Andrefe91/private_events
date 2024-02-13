class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.events.build()
  end

  def create
    @event = current_user.events.create(valid_event_params)

    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = current_user.events.find(params[:id])
    @event.destroy

    redirect_to user_path(current_user.id)
  end

  private

  def valid_event_params
    params.require(:event).permit(:place, :date)
  end

  def valid_id
    params.require(:event).permit(:id)
  end
end
