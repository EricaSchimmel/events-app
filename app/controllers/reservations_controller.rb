class ReservationsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @pagy, @reservations = pagy(Reservation.where(:event_id => params[:event_id]))
  end

  def create
  end

  def destroy
  end
end
