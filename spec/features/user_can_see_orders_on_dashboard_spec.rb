require 'rails_helper'

feature 'user has order list on dashboard' do
  before do
    def create_order
      visit '/signin_or_signup'
      click_link_or_button("twitter-link")
      visit '/items'
      click_link_or_button('pencil')
      click_link_or_button("Add to Cart")
      visit '/cart'
      click_link_or_button("Checkout")
    end
    create_order
  end

  it 'has list of all items and corresponding orders on dashboard' do
    within("#get-history") do
      expect(page).to have_content("pencil")
      expect(page).to have_link("Order 1", order_path(Order.first))
    end
  end
end
