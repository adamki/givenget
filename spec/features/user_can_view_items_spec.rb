require 'rails_helper'

feature 'user can view an item' do
  context 'unauthenticated' do

    it 'can view the list of items' do
      visit '/items'
      expect(page).to have_content('haircut')
      expect(page).to have_content('pencil')
    end

    it 'can view an individual item' do
      visit '/items'
      click_on 'pencil'
      item = Item.find_by(title: 'pencil')
      expect(current_path).to eq(item_path(item))
      expect(page).to have_content('bulk pencils')
      expect(page).to have_content('$10.20')
    end

  end
end
