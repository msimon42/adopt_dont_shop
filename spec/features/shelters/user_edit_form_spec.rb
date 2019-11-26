require 'rails_helper'

RSpec.describe 'shelters edit page', type: :feature do
  it 'can see shelter form' do
    shelter_1 = Shelter.create(
      name: 'Shelter of Dog',
      address: '123 main street',
      city: 'Denver',
      state: 'CO',
      zip: '80234'
    )

    visit "/shelters/#{shelter_1.id}/edit"
    
    expect(page).to have_content("Edit Shelter")
    expect(page).to have_field('Name')
    expect(page).to have_field('Address')
    expect(page).to have_field('City')
    expect(page).to have_field('State')
    expect(page).to have_field('Zip')

  end
end
