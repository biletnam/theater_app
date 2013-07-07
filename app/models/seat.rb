# == Schema Information
#
# Table name: seats
#
#  id           :integer          not null, primary key
#  row          :string(255)
#  chair_letter :string(255)
#  user_id      :integer
#  showtime_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Seat < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :user

  attr_accessible :row, :chair_letter, :showtime_id, :user_id
  validates :row, :presence => true
  validates :chair_letter, :presence => true
end
