require 'rails_helper'

feature 'can give items' do
  context 'unauthenticated user' do
    it 'is asked to login or create account' do
      visit '/'
      click_on 'Give'
      expect(current_path).to eq('/give')
    end
  end
end
