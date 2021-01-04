class ChangeStartDateToBeDateInEvents < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :start_date, 'date using start_date::date'
  end
end
