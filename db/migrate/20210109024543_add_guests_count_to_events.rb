class AddGuestsCountToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :guests_count, :integer, default: 0, null: false
  end
end
