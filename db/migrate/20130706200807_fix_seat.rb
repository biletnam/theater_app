class FixSeat < ActiveRecord::Migration
  def change
    rename_column :seats, :seat, :chair_letter
  end
end
