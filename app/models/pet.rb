class Pet < ApplicationRecord
  belongs_to :shelter
  validates_presence_of :name, :approx_age, :description, :image, :adoptable?, :sex
end
