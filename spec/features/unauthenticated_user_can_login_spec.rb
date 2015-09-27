require 'rails_helper'

feature 'unauthenticated user create account and login' do
  context 'with valid account from twitter' do

    it 'sees the dashboard' do
      visit '/'
      click_on 'Login/Create Account'
      click_on 'twitter-link' #do omniauth twitter stuff
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

  context 'with valid attributes' do
    # visit '/'
    # click_on 'Login/Create Account'
    # click_on 'Create an account'
  end

end
