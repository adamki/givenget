require 'rails_helper'

feature "order is created when user checks out" do
  before do
    visit '/items'
    click_link_or_button('pencil')
    click_link_or_button("Add to Cart")
    visit '/cart'
    expect(page).to have_content("pencil")
  end
  it 'creates an order on checkout' do
    item = Item.first
    price = item.price
    click_link_or_button("Checkout")
  # Then the order should be placed
    expect(current_path).to eq(orders_path)
  # And I should see a message "Order was successfully placed"
  # And I should see the order I just placed in a table
  end
end