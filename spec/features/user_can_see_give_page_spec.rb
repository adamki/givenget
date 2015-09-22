require 'rails_helper'

feature 'user can see give page' do
	context 'unauthenticated user' do

		it 'can see the email' do
			visit '/give'
			expect(page).to have_content('givenget@example.com')
		end
	end
end