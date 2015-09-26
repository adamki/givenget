require 'rails_helper'

feature 'user can remove items from a cart' do

	context 'unauthenticated' do

    before :each do
			visit '/items'
		  within('#pencil') do
	  	 	fill_in("Quantity", with: "2")
       	click_on "Add to Cart"
      end
    end

		it 'can remove items from the cart' do
     	expect(current_path).to eq('/items')
      visit cart_path
      within('#pencil') do
        click_on "Delete"
      end

      expect(page).not_to have_content("pencil")
    end

    it 'can add items to the cart' do
      visit cart_path
      within('#pencil') do
        expect(page).to have_content("2")
        click_button "Add"
      end

      expect(page).to have_content("3")
    end

    it 'can subtract a single item from the cart' do
      visit cart_path
      within('#pencil') do
        expect(page).to have_content("2")
        click_button "Remove"
      end

      expect(page).to have_content("1")
    end

    it 'does not remove an item into negative values' do
      visit cart_path
      within('#pencil') do
        expect(page).to have_content("1")
        click_button "Remove"
        click_button "Remove"
        click_button "Remove"
      end

      expect(page).to have_content("You have no items in your cart")
    end
  end
end

