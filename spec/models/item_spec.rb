require 'rails_helper'

describe 'item' do
  context 'with valid attributes' do

  let(:attributes){{title: 'pencil',
                    description: 'bulk pencils',
                    price: 1020,
                    image: 'https://pencil-outlet.com'}}

    it 'is valid with valid attributes' do
      item = Item.new(attributes)
      expect(item.title).to eq('pencil')
      expect(item.description).to eq('bulk pencils')
      expect(item.price).to eq(1020)
      expect(item.image).to eq('https://pencil-outlet.com')
      expect(item).to be_valid
    end

  end

  context 'with invalid attributes' do

    let(:attributes){{title: 'pencil',
                      description: 'bulk pencils',
                      price: 1020,
                      image: 'https://pencil-outlet.com'}}

    it 'requires title attributes' do
      item = Item.new(attributes)
      item.title = nil

      expect(item).to_not be_valid
    end

    it 'requires description attributes' do
      item = Item.new(attributes)
      item.description = nil

      expect(item).to_not be_valid
    end

    it 'requires price attributes' do
      item = Item.new(attributes)
      item.price = nil

      expect(item).to_not be_valid
    end
  end

end
