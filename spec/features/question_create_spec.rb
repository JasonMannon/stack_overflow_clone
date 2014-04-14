require 'spec_helper'

feature 'user question' do
  scenario 'Successfully creates a question' do
    visit signup_path
    fill_in "Email", with: "jay@gmail.com"
    fill_in "Password", with: "1"
    fill_in "Password confirmation", with: "1"
    click_button "Create User"
    page.should have_content "tnx 4 signing up!!"
    # create_user_and_sign_in
    visit root_url
    fill_in "Title", with: "Does the ship sink?"
    fill_in "Question", with: "how did the titanic float in the first place? it's so heavy."
    click_button "Create Question"
  end
end
