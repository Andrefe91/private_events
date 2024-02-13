class InvitationsController < ApplicationController
  def create
    @event = Event.find(params[:id])
    current_user.attended_events << @event

    #Redirect to the page to force a refresh
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    current_user.attended_events.delete(@event)

    #Redirect to the page to force a refresh
    redirect_to event_path(@event)
  end

  private

  def invitation_params
    params.require(:invitation).permit(:id)
  end
end
