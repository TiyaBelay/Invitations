# Managing Dashboards through the Dashboard controller
class DashboardsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params(:event))
    @event.save
    redirect_to new_dashboards_path(@event)
  end
end
