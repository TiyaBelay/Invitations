class EventsController < ApplicationController
  def new
    @event = Event.new
    render partial: 'event_form'
  end

  def create
    params[:event]
    @event = Event.new(event_params)
    @event.save
    redirect_to new_dashboard_path
  end

  private

  def event_params
    params.require(:event).permit(:event_name,
                                  :event_type,
                                  :partner1_first_name,
                                  :partner1_last_name,
                                  :partner2_first_name,
                                  :partner2_last_name,
                                  :due_date)
  end
end
