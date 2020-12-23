class ChangeColumnFeedbackToReviewInReservations < ActiveRecord::Migration[6.0]
  def change
    rename_column :reservations, :feedback, :review
  end
end
