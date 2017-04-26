# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    # initialize item
    @digital_item  = Digital_item.new('Test Name', 15.00)
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Digital_item
  describe 'Initialization' do
    it 'should be a digital_item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end

    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Test Name')
    end

    it 'is assigned a price' do
      expect(@digital_item.price).to eq(15.00)
    end

    it 'is assigned quantity of 1' do
      expect(@digital_item.quantity).to eq(1)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @digital_item.name = 'Another Name'
      expect(@digital_item.name).to eq('Another Name')
    end

    it 'assigns and reads the price' do
      @digital_item.price = 20.00
      expect(@digital_item.price).to eq(20.00)
    end

    it 'quantity should remain 1' do
      @digital_item.sell(20)
      expect(@digital_item.quantity).to eq(1)
    end

    it 'quantity should remain 1' do
      @digital_item.stock(100)
      expect(@digital_item.quantity).to eq(1)
    end
  end
end
