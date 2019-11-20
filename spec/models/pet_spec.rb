require 'rails_helper'

describe Pet, type: :model do
  describe "validations" do
    it {should validate_presence_of :image, :name, :approx_age, :sex, :shelter_id}
  end   
end
