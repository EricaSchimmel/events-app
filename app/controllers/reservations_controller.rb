class ReservationsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :check_if_event_exists_and_set_event, :except => [:destroy]

  def index
    if params[:event_id]
      @pagy, @reservations = pagy(Reservation.where(:event_id => @event.id))

    elsif params[:user_id]
      authenticate_user!
      user_can_view_private_page?

      @pagy, @reservations = pagy(Reservation.where(:user_id => params[:user_id]))
    end
  end

  def create
    @reservation = current_user.reservations.build(:event_id => @event.id)

    if @reservation.save
      redirect_to event_path(@event.id), :notice => "You've been successfully reserved to the event!"
    else
      redirect_to event_path(@event.id),
                  :alert => "Reservation could not be created because #{@reservation.errors.full_messages}"
    end
  end

  def destroy
    user_can_do_private_action?(@reservation.user_id)

    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    redirect_to root_url, :notice => 'Your reservation has been canceled.'
  end

  private

  def check_if_event_exists_and_set_event
    return unless params[:event_id]

    @event = Event.find(params[:event_id])

    # TODO: Change url path to root_url once made
    redirect_to user_path(1), :alert => 'Event does not exist.' if @event.nil?
  end
end
