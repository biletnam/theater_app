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

require 'spec_helper'

describe Seat do
  it "gets created" do
    seat = Seat.new(:row => "12", :chair_letter => "C")
    seat.save

    seats = Seat.all
    expect(seats).to include(seat)
  end

  it "gets created with neither a row nor chair letter" do
    user = User.new

    expect(user.valid?).to be_false
  end

  it "gets created without a seat assigned" do
    seat = Seat.new(:row => "13")

    expect(seat.valid?).to be_false
  end

  it "gets created without a row assigned" do
    seat = Seat.new(:chair_letter => "B")

    expect(seat.valid?).to be_false
  end

  it "can be purchased" do
    seat = FactoryGirl.create(:seat)

    expect(seat.available?).to be_true
 end

  it "cannot be purchased" do
    seat = FactoryGirl.create(:reserved_seat)

    expect(seat.available?).to be_false
  end

end
