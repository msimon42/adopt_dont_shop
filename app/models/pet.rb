class Pet < ApplicationRecord
  belongs_to :shelter
  validates_presence_of :name, :approx_age, :description, :image, :adoptable?, :sex

  def shelter_name
    self.shelter.name
  end

  def adoption_status
    return 'Available for adoption' if self.adoptable?
    'Not available for adoption'
  end

end
