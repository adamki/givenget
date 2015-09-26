require 'rails_helper'

feature "order is created when user checks out" do
  before do
    visit '/items'
    click_link_or_button('pencil')
    # click_link_or_button('Add to Cart')
  end
  xit 'creates an order on checkout' do

  end
end