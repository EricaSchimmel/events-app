class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
