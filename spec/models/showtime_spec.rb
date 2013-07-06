require 'spec_helper'

describe Showtime do
  it "gets created" do
    showtime = Showtime.new(:date => "07/04/2013", :start_time => "16:00")
    showtime.save

    showtimes = Showtime.all
    expect(showtimes).to include(showtime)
  end

  it "gets created without a date" do
    showtime = Showtime.new(:start_time => "19:00")

    expect(showtime.valid?).to be_false
  end

  it "gets created without a start time" do
    showtime = Showtime.new(:date => "07/05/2013")

    expect(showtime.valid?).to be_false
  end
end
