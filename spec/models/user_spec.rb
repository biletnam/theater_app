require 'spec_helper'

describe User do
  it "signs up" do
    user = User.new(:email => "eric@example.com")
    user.save

    users = User.all
    expect(users).to include(user)
  end

  it "signs up without an @ sign in email" do
    user = User.new(:email => "eric.example.com")

    expect(user.valid?).to be_false
  end
end
