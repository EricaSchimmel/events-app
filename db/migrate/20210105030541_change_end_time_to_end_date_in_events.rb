class ChangeEndTimeToEndDateInEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :end_time, :end_date
  end
end
