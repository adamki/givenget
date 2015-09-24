require 'rails_helper'

feature 'categories in items view' do
  it 'displays all categories' do
    categories = Category.all
    visit '/items'
    categories.each do |cat|
      expect(page).to have_content(cat.title)
    end
  end
end