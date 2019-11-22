require 'rails_helper'

RSpec.describe 'new shelter form' do
  it 'can see shelter form' do
    visit 'shelters/new'

    expect(page).to have_field('shelter[name]')
    expect(page).to have_field('shelter[address]')
    expect(page).to have_field('shelter[city]')
    expect(page).to have_field('shelter[state]')
    expect(page).to have_field('shelter[zip]')
  end

  it 'can create new shelter' do
    fill_in 'shelter[name]', with: 'New Shelter'
    fill_in 'shelter[address]', with: '123 Main'
    fill_in 'shelter[city]', with: 'Denver'
    fill_in 'shelter[state]', with: 'CO'
    fill_in 'shelter[zip]', with: '80211'

    click_on 'Submit'
    new_shelter = Shelter.last

    expect(current_path).to_eq('/shelters')
    expect(page).to have_content(new_shelter.name)
    expecct(page).to have_content(new_shelter.address)
    expect(page).to have_content(new_shelter.city)
    expect(page).to have_content(new_shelter.state)
    expect(page).to have_content(new_shelter.zip)
  end
end
