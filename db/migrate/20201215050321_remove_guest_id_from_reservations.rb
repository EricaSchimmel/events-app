class RemoveGuestIdFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :guest_id
  end
end
