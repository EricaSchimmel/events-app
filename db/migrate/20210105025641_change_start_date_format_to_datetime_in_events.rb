class ChangeStartDateFormatToDatetimeInEvents < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :start_date, :datetime
  end
end
