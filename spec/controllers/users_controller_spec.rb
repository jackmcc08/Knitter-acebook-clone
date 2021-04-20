require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /users/new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /users/" do
    it "responds with 200" do
      post :create, params: { user: { username: "Sha88", password: "Password88" } }
      expect(response).to redirect_to(posts_url)
    end

    it "creates a user" do
      post :create, params: { user: { username: "Sha88", password: "Password88" } }
      expect(User.find_by(username: "Sha88")).to be
      # Is this test meant to end like this? 
    end
  end
end
