class InvitationsController < ApplicationController
  def create
    @event = Event.find(params[:id])
    current_user.attended_events << @event
  end

  private

  def invitation_params
    params.require(:events).permit(:id)
  end
end
