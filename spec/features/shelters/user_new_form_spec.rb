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
end
