# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_admin        :boolean          default(FALSE)
#

require 'spec_helper'

describe User do


  it "signs up without an email" do
    user = User.new

    expect(user.valid?).to be_false
  end

  it "signs up without an @ sign in email" do
    user = User.new(:email => "eric.example.com", :password =>"foobar", :password_confirmation =>"foobar")

    expect(user.valid?).to be_false
  end

  it "authenticates with a valid email and password" do
    @user = FactoryGirl.create(:user)

    expect(@user.authenticate("foobar")).to eq(@user)
  end

  it "authenticates with an incorrect password" do
    @user = FactoryGirl.create(:user)

    expect(@user.authenticate("incorrect")).to be_false
  end

  it "reserves a seat to a showtime" do
    @user = FactoryGirl.create(:user)
    seat = FactoryGirl.create(:reserved_seat, :user_id => @user.id)

    expect(@user.seats).to include(seat)
  end

end
