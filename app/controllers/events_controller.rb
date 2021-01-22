class EventsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
  before_action :set_event, :only => [:show, :edit, :update, :destroy]

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(
      :title,
      :start_date,
      :end_date,
      :description,
      :online,
      :online_link,
      :guest_limit,
      :host_id
    )
  end
end
