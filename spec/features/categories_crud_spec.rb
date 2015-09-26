require 'rails_helper'

feature 'Categories restfulness' do
  it 'display all categories' do
    visit '/categories'
    Category.all.each do |cat|
      expect(page).to have_content(cat.title)
    end
  end
end