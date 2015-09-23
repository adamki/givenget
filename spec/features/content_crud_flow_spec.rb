require 'rails_helper'

feature 'content can be added' do
  context 'no credential validation' do # will expect this sequence to be modified
                                        #   after authentication implemented

    let(:attributes_1){
      OpenStruct.new(name: "Header",
        payload: "Anything. Some numbers 123432.")
    }
    let(:attributes_2){
      OpenStruct.new(name: "Paragraph",
        payload: "Different. 23489s;lkas")
    } 
    it 'creates a content record' do
      visit '/content/new'
      expect(current_path).to eq('/content/new')
      fill_in 'Unique name', with: attributes_1.name
      fill_in 'Payload', with: attributes_1.payload
      click_button 'Create content'
      expect(current_path).to eq('/content')
      expect(page).to have_content(attributes_1.name)
      expect(page).to have_content(attributes_1.name)
    end

    it 'can view all content records' do
      visit '/content'
      expect(current_path).to eq('/content')
      expect(page).to have_content("Butter")
      expect(page).to have_content("Margerine")
      expect(page).to have_content("Aliquam feugiat")
      expect(page).to have_content("Maecenas tincidunt")
    end

    it 'has links to edit content' do
      visit '/content'
      Content.all.each do |c|
        expect(page).to have_link("Edit", edit_content_path(c))
      end
    end

    it 'can edit content' do
      visit '/content'
      first(:link, "Edit").click
      expect(current_path).to eq('/content/1/edit')
      fill_in :name, with: attributes_2.name
      fill_in 'Payload', with: attributes_2.payload
      click_button 'Save content'

    end
  end
end