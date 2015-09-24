require 'rails_helper'

feature 'about page flow' do
  it 'has an about page' do
    visit '/about'
  end

  #george creating link
  xit 'is accessible from the home page' do
    visit '/'
    click_link('About')
    expect(current_path).to eq('/about')
  end

end