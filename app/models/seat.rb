class Seat < ActiveRecord::Base
  attr_accessible :row, :seat, :showtime_id, :user_id
end
