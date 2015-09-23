require 'rails_helper'

feature 'user interacts with the login' do
  context 'unauthenticated with or without account' do

    it 'can create an account or login if account already made' do
      visit '/'
      click_on 'Login'
      #do omniauth twitter stuff
      expect(current_path).to eq('/dashboard')
      within('.navbar') do
        expect(page).to have_content('Logged in as Test User') #my user name
        expect(page).to have_link('Logout')
        expect(page).to_not have_link('Login')
      end
      expect(page).to have_content('Welcome Test User') #profile info
      expect(page).to have_content('Donate Items')
      expect(page).to have_content('View Items')
      expect(page).to have_content("Your Give'n'Get history:")
    end

  end
end
