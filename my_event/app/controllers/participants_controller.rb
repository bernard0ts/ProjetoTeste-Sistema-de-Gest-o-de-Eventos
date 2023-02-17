class ParticipantsController < ApplicationController
skip_before_action :verify_authenticity_token


def create
  @event = Event.find(params[:event_id])
  Participant.create(user_id: current_user.id, event_id: @event.id)
  redirect_to event_path(@event)
end

    
def destroy
  @event = Event.find(params[:event_id])
  Participant.where(event_id: @event.id, user_id: current_user.id).destroy_all
  redirect_to event_path(@event)
end
end

