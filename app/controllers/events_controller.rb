class EventsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
  before_action :set_event, :only => [:show, :edit, :update, :destroy]

  def index
    if params[:user_id]
      @pagy, @events = pagy(Event.where(:host_id => params[:user_id]))
    else
      @pagy, @events = pagy(Event.all)
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.hosted_events.build(event_params)

    if @event.save?
      redirect_to event_path(@event), :notice => 'Your event was successfully created!'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), :notice => 'Your changes have been saved.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
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
