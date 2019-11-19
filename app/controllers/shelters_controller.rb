class SheltersController < ApplicationController
  def shelters
    @shelters = Shelter.all
  end
end
