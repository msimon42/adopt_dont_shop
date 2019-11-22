class SheltersController < ApplicationController
  def shelters
    @shelters = Shelter.all
  end

  def new

  end

  def create
    shelter = Shelter.new({
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip: params[:zip]
      })
    shelter.save
    redirect_to "/shelters"
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def edit
    @shelter_id = params[:shelter_id]
  end

  def update
    @shelter = Shelter.find(params[:id])
    @shelter.update({
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip: params[:zip]
      })
    @shelter.save
    redirect_to "/shelters/#{@shelter.id}"
  end

  def delete
    Shelter.delete(params[:id])
    redirect_to "/shelters/"
  end

  def pets
    @shelter = Shelter.find(params[:id])
    @shelter_pets = Shelter.find_pets(@shelter)
  end

  #private



end
