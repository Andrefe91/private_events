class PartiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @parties = current_user.parties
  end

  def new
    @parties = current_user.parties.build()
  end

  def create
    @parties = current_user.parties.create(party_params)

    if @parties.save
      redirect_to parties_path(@parties)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def party_params
    params.require(:party).permit(:place, :date)
  end
end
