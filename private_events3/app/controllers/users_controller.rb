class UsersController < ApplicationController
  def show
    @parties = current_user.parties
  end
end
