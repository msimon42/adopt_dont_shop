class Shelter < ApplicationRecord
  validates_presence_of :name, :address, :city, :state, :zip
  has_many :pets

  def find_pets
    pets = Pet.where(shelter_id: self.id)
  end
end
