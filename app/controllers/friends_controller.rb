class FriendsController < ApplicationController
  def index
  end

  def new
    @friend = Friend.new
  end
end
