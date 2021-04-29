require 'rails_helper'

RSpec.feature "List friends of another user", type: :feature do
  scenario "a user can see another users list of friends" do
    post_message("I'm looking for friends", 'Nata')
    click_link 'Log Out'
    second_sign_up('Max')
    click_link 'Add Friend'
    click_link 'Log Out'
    log_in('Nata')
    find(:xpath,'./spec/fixtures/granny-with-guns.jpeg').click
    expect(page).to have_content("Nata's Friend List: Max")
  end
end