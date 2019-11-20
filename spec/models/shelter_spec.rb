require 'rails_helper'

describe Shelter, type: :model do
  describe "validations" do
    it {should validate_presence_of :name, :address, :city, :state, :zip}
  end
end
