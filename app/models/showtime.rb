class Showtime < ActiveRecord::Base
  belongs_to :movie
  has_many :seats
  has_many :users, :through => :seats


  attr_accessible :date, :start_time
end
