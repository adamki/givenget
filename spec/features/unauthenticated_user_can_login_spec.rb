require 'rails_helper'

feature 'user interacts with the login' do
  context 'unauthenticated with no account' do

    xit 'can create an account' do
      visit '/'
      click_on 'Create Account'
    end

  end
end
