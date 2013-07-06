class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :row
      t.string :seat
      t.integer :user_id
      t.integer :showtime_id

      t.timestamps
    end
  end
end
