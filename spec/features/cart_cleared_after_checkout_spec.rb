require 'rails_helper'

feature 'Cart cleared after checkout' do
  before do
    visit '/signin_or_signup'
    click_link_or_button("twitter-link")
    visit '/items'
    click_link_or_button('pencil')
    click_link_or_button("Add to Cart")
    visit '/cart'
    expect(page).to have_content("pencil")
  end

  it 'clears the cart' do
    click_link_or_button("Checkout")
    visit '/cart'
    expect(page).to have_content('You have no items in your cart')
  end
end