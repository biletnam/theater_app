class Movie < ActiveRecord::Base
  has_many :showtimes

  attr_accessible :name
  validates :name, :presence => true
end
