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

require 'spec_helper'

describe Showtime do
  it "gets created" do
    movie = Movie.create(:name => "The Godfather")
    showtime = movie.showtimes.create(:date => "07/04/2013", :start_time => "16:00:00")
    showtime.save

    showtimes = Showtime.all
    expect(showtimes).to include(showtime)
  end

  it "gets created without a date nor a time" do
    showtime = Showtime.new

    expect(showtime.valid?).to be_false
  end

  it "gets created without a date" do
    showtime = Showtime.new(:start_time => "19:00")

    expect(showtime.valid?).to be_false
  end

  it "gets created without a start time" do
    showtime = Showtime.new(:date => "07/05/2013")

    expect(showtime.valid?).to be_false
  end

  it "has seats available" do
    seat = FactoryGirl.create(:seat)
    showtime = seat.showtime

    expect(showtime.available_seats?).to be_true
  end

  it "is sold out" do
    seat = FactoryGirl.create(:reserved_seat)
    showtime = seat.showtime

    expect(showtime.available_seats?).to be_false
  end

end
