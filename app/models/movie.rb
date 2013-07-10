# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Movie < ActiveRecord::Base
  has_many :showtimes

  attr_accessible :name, :poster

  mount_uploader :poster, ImageUploader

  validates :name, :presence => true
end
