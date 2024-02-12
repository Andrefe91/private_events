class UsersController < ApplicationController
  def show
    @events = User.find(current_user.id).events
  end
end
