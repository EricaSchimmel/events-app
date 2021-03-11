module ReservationsHelper
  def user_reserved_to_event?(event)
    if current_user.id == event.host_id
      true
    elsif event.guests.find_by(:user_id => current_user.id).nil?
      false
    else
      true
    end
  end
end
