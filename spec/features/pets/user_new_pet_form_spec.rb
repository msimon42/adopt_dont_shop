RSpec.describe 'new pet form', type: :feature do
  it 'can render fields' do
    shelter_1 = Shelter.create(
      name: 'Shelter of Dog',
      address: '123 main street',
      city: 'Denver',
      state: 'CO',
      zip: '80234'
    )

    visit "/shelters/#{shelter_1.id}/pets/new"

    expect(page).to have_content("Add Pet")
    expect(page).to have_content("Name: ")
    expect(page).to have_content("Description: ")
  end
end
