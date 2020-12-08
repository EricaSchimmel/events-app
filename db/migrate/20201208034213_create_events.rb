class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.boolean :online
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :online_link
      t.integer :attendee_limit

      t.timestamps
    end
  end
end
