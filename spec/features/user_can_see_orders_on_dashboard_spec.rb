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
      expect(page).to have_link("Order #{Order.last.id}", order_path(Order.last))
    end
  end

  it 'can view detailed order linking from dashboard' do
    within("#get-history") do
      click_link("Order #{Order.last.id}", order_path(Order.last))
      expect(current_path).to eq(order_path(Order.last))
      expect(page).to have_content('pencil')
    end
  end
end
