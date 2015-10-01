require 'rails_helper'

feature 'checkout' do
  before do
    fill_cart
  end
  it 'requires a mailing address on checkout' do
    click_link_or_button('Checkout')
    expect(current_path).to eq('/checkouts/new')
    fill_in 'Full Name', with: "Abraham Lincoln"
    fill_in 'Address First Line', with: "123 Main St."
    fill_in 'Address Second Line', with: "Unit 7"
    fill_in 'City', with: "Springfield"
    fill_in 'State', with: 'IL'
    fill_in 'Zip', with: '12345'
  end
end