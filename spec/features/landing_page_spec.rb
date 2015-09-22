require 'rails_helper'

feature 'landing page' do
  it 'user sees welcome page when visitng root' do
    visit '/'
    expect(page).to have_content('Welcome')
    expect(page).to have_content('Donate Items')
    expect(page).to have_content('View Items')
  end

  it 'user clicks on donate link to go donate items page' do
    visit '/'
    click_link 'Donate Items'
    expect(current_path).to eq(new_item_path)
  end

  it 'user clicks on view items link to go to items index path' do
    visit '/'
    click_link 'View Items'
    expect(current_path).to eq(items_path)
  end
end

