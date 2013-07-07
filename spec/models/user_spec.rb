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
  it "signs up" do
    user = User.new(:email => "eric@example.com")
    user.save

    users = User.all
    expect(users).to include(user)
  end

  it "signs up without an email" do
    user = User.new

    expect(user.valid?).to be_false
  end

  it "signs up without an @ sign in email" do
    user = User.new(:email => "eric.example.com")

    expect(user.valid?).to be_false
  end
end
