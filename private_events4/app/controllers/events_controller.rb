class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
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
      render :new, satatus: :unprocessable_entity
    end
  end

  private

  def valid_event_params
    params.require(:event).permit(:place, :date)
  end
end
