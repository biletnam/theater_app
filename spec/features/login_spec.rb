require 'spec_helper'

feature "login" do
  scenario "with correct password" do

    user = FactoryGirl.create(:user)

    visit login_path
    find("#log-in").fill_in "Email", :with => user.email
    find("#log-in").fill_in "Password", :with => user.password

    click_on "Login"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Logged in")

  end
end

feature "signup" do
  scenario "with correct password" do

    visit login_path
    find("#sign_in").fill_in "Email", :with => "christina@wdi.com"
    find("#sign_in").fill_in "Password", :with => "workplease"
    find("#sign_in").fill_in "Password confirmation", :with => "workplease"

    click_on "Create User"

    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Logged in")

  end
end
