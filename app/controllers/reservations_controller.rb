class ReservationsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    if params[:event_id]
      @pagy, @reservations = pagy(Reservation.where(:event_id => params[:event_id]))

    elsif params[:user_id]
      authenticate_user!
      user_can_view_private_page?

      @pagy, @reservations = pagy(Reservation.where(:user_id => params[:user_id]))
    end
  end

  def create
    @reservation = current_user.reservations.build(:event_id => params[:event_id])

    if @reservation.save?
      redirect_to event_path(params[:event_id])
    else
      redirect_to event_path(params[:event_id]),
                  :alert => "Reservation could not be created because #{@reservation.errors.full_messages}"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:reservation_id])
  end
end
