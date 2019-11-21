class Shelter < ApplicationRecord
  validates_presence_of :name, :address, :city, :state, :zip
  has_many :pets

  def self.find_pets(shelter)
    pets = Pet.where(shelter_id: shelter.id)
  end
end
