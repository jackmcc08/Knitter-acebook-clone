require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET /sessions/new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /sessions/" do
    it "responds with 200" do
      User.create(username: "ralph", password: "password")
      post :create, params: { username: "ralph", password: "password" }
      expect(response).to redirect_to(root_url)
    end
  end

end