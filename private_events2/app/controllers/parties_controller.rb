class PartiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @party = current_user.parties
  end

  def new
    @party = current_user.parties.build()
  end

  def create
    @party = current_user.parties.build(party_params)
    current_user.parties << @party

    if @party.save
      redirect_to parties_path(@party)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def party_params
    params.require(:party).permit(:place, :date)
  end
end
