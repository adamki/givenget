require 'rails_helper'

describe 'item' do
  context 'with valid attributes' do

  let(:attributes){{title: 'pencil', description: 'bulk pencils', price: 1020, image: 'https://pencil-outlet.com', categories: [Category.first]}}

    it 'has attributes' do
      item = Item.new(attributes)
      expect(item.title).to eq('pencil')
      expect(item.description).to eq('bulk pencils')
      expect(item.price).to eq(1020)
      expect(item.image).to eq('https://pencil-outlet.com')
      expect(item).to be_valid
    end

  end

  context 'with invalid attributes' do
    let(:without_category){{title: 'pencil', description: 'bulk pencils', price: 1020, image: 'https://pencil-outlet.com'}}

    it "must have a category" do
      item = Item.new(without_category)
      expect(item).to_not be_valid
    end
  end


  
end
