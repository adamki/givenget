require 'rails_helper'

feature 'user can add items to a cart' do 
	context 'unauthenticated' do

		it 'can add an item to the cart' do
			visit '/items'
			 within('#pencil') do
			 	fill_in("Quantity", with: "2")
      	click_on "Add to Cart"
      	expect(current_path).to eq('/items')
      end
      visit '/cart'
      expect(page).to have_content('pencil')
      expect(page).to have_content('$10.20')
    end
  end
end
