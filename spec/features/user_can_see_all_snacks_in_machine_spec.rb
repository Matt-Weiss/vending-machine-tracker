require 'rails_helper'

RSpec.describe 'As a user' do
  it 'can show me all snacks in a machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack1 = dons.snacks.create(name: "White Castle Burger", price: "3.50")
    snack2 = dons.snacks.create(name: "Pop Rocks", price: "1.50")

    visit machine_path(dons)
    expect(page).to have_content("White Castle Burger: $3.50")
    expect(page).to have_content("Pop Rocks: $1.50")
  end
end
