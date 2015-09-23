require 'rails_helper'

feature 'user can create a new item' do
	context 'unauthenticated user' do

    let(:test_item){Item.create( title: "Test Item", description: "Test Description", price: 100) }

		it 'can create a new item ' do
			visit '/items/new'
      fill_in "Title", with: "bicycle"
      fill_in "Description", with: "A good trusty bike that is in need of a new home"
      fill_in "Price", with: "299.99"
      # Need to add a category select at later time
      click_button "Create Item"
      expect(page).to have_content("bicycle")
    end

    it 'can delete an existing item' do
      test_item
      visit items_path
      expect(page).to have_content("Test Item")
      click_link "Test Item"
      expect(current_path).to eq(item_path(test_item))
      click_link "Delete"
      expect(current_path).to eq(items_path)
      expect(page).not_to have_content("Test Item")
    end

    it 'can edit an existing item' do
      test_item
      visit items_path
      click_link "Test Item"
      click_link "Edit"
      fill_in "Title", with: "New Test Item"
      save_and_open_page
      click_button "Update Item"
      expect(page).to have_content("New Test Item")
    end
  end
end
