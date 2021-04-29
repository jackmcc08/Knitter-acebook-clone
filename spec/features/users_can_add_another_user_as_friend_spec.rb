require 'rails_helper'

RSpec.feature "Adding friend", type: :feature do
  scenario "A signed in user can add a friend" do
    post_message("I'm looking for friends", 'Nata')
    click_link 'Log Out'
    sign_up('Max')
    click_link 'Add Friend'
    expect(page).to have_content("Friend Added")
  end
end