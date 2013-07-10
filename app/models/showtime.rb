# == Schema Information
#
# Table name: showtimes
#
#  id         :integer          not null, primary key
#  date       :date
#  start_time :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#

class Showtime < ActiveRecord::Base
  belongs_to :movie
  has_many :seats
  has_many :users, :through => :seats


  attr_accessible :date, :start_time, :movie_id
  validates :date, :presence => true
  validates :start_time, :presence => true
  validates :movie_id, :presence => true

  def available_seats?
    unreserved_seats = self.seats.where(:user_id => nil)

    unreserved_seats.length > 0
  end
end
