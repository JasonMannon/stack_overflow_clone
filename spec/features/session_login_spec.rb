require 'spec_helper'

feature 'user log in' do
  scenario 'Successfully logs in' do
    visit login_path
    fill_in "Email", with: "jay@gmail.com"
    fill_in "Password", with: "1"
    click_button "Log In"
  end
end
