class ChangeAttendeeLimitToGuestLimitInEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :attendee_limit, :guest_limit
  end
end
