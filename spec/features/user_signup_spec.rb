require 'spec_helper'

feature 'user sign up' do
  scenario 'successfully signs up' do
    visit signup_path
    fill_in "Email", with: "jay@gmail.com"
    fill_in "Password", with: "1"
    fill_in "Password confirmation", with: "1"
    click_button "Create User"
    page.should have_content "tnx 4 signing up!!"
  end
end
