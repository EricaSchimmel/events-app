class RemoveReviewFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :review
  end
end
