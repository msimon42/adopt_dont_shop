class SheltersController < ApplicationController
  def shelters
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
  end
end
