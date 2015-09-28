require 'rails_helper'

  describe 'admin item list' do

    before :each do
      login_admin!
    end

    it 'can view item list' do
      visit '/items'
      expect(page).to have_link("Delete")
      expect(page).to have_link("Create New Item")
      expect(page).to have_link("Edit")
    end

    it 'can view an individual item' do
      visit '/items'

      within('.internet') do
        click_link("Edit")
      end

      item = Item.find_by(title: 'internet')
      expect(current_path).to eq(item_path(item))
      
      expect(page).to have_content('not worth the price')
      expect(page).to have_content('$60.16')
    end

  end
