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
      expect(page).to have_content('') #profile info
    end

  end
end
