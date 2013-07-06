class Seat < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :user

  attr_accessible :row, :chair_letter, :showtime_id, :user_id
end
