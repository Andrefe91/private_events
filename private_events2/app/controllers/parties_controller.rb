class PartiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @parties = current_user.parties
  end

  def new
    @parties = current_user.parties.build()
  end

  def create
  end
end
