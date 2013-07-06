require 'spec_helper'

describe Seat do
  it "gets created" do
    seat = Seat.new(:row => "12", :chair_letter => "C")
    seat.save

    seats = Seat.all
    expect(seats).to include(seat)
  end

  it "gets created without a row nor chair letter" do
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
end
