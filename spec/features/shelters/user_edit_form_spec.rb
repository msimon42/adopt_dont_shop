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

    visit "shelters/#{shelter_1.id}/edit"

    expect(page).to have_content("Edit Shelter")
    expect(page).to have_field('shelter[name]')
    expect(page).to have_field('shelter[address]')
    expect(page).to have_field('shelter[city]')
    expect(page).to have_field('shelter[state]')
    expect(page).to have_field('shelter[zip]')
    
  end
end
