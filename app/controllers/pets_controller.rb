class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @shelter = Shelter.find(params[:id])
  end

  def create
    shelter = Shelter.find(params[:id])

    pet = Pet.new({
      shelter_id: shelter.id,
      image: params[:image_file],
      name: params[:name],
      description: params[:description],
      approx_age: params[:approx_age],
      sex: params[:gender],
      adoptable?: true
      })

    pet.save
    redirect_to "/shelters/#{shelter.id}/pets"
  end

  def edit
    @pet = Pet.find(params[:id])
  end
end
