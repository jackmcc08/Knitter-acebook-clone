require 'rails_helper'

def sign_up(username)
  visit "/"
  click_link "Sign Up"
  fill_in "Username", with: username
  fill_in "Password", with: "Password88"
  click_button "Submit"
end

def post_message(post, username=nil)
  sign_up(username) if username
  click_link "New post"
  fill_in "Message", with: post
  click_button "Submit"
end

def log_in(username)
  click_link "Log In"
  fill_in "Username", with: username
  fill_in "Password", with: "Password88"
  click_button "Login"
end
