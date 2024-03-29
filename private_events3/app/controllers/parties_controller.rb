class PartiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @parties = current_user.parties
  end

  def new
    @party = current_user.parties.build()
  end

  def show
    @party = Party.find(params[:id])
  end

  def create
    @party = current_user.parties.create(party_params)
    if @party.save
      redirect_to parties_path
    else
      render :new
    end
  end

  private

  def party_params
    params.require(:party).permit(:place, :date)
  end

end
