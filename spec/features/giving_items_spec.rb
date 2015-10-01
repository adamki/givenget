require 'rails_helper'

feature 'can give items' do
  context 'unauthenticated user' do
    it 'is asked to login or create account' do
      visit '/'
      click_on 'Give'
      expect(current_path).to eq('/give')
      expect(page).to have_content('Thank you for your interest in donating!')
      click_on("Donate")
      expect(current_path).to eq('/signin_or_signup')
      expect(page).to have_content('Please Sign In or Create an Account Before Continuing')
      click_on("twitter-link")
      expect(current_path).to eq('/give')
      click_on("Donate")
      expect(current_path).to eq('/gives/new')
    end
  end

end
