require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @blueray = Bluray.new('Test Name', 20, 90, 'Test Director', 'Test Producer')
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Bluray
    it 'should be blueray' do
      expect(@blueray).to be_instance_of(Bluray)
    end
    # check that it is an extended from Item
    it 'should an item' do
      expect(@blueray).to be_kind_of(Item)
    end
    it 'name should be Test Name' do
      expect(@blueray.name).to eq('Test Name')
    end
    it 'price should be 20' do
      expect(@blueray.price).to eq(20)
    end
    it 'run_time should be 90' do
      expect(@blueray.run_time).to eq(90)
    end
    it 'director should be Test Director' do
      expect(@blueray.director).to eq('Test Director')
    end
    it 'producer should be Test Producer' do
      expect(@blueray.producer).to eq('Test Producer')
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @blueray.name = 'Another Name'
      expect(@blueray.name).to eq('Another Name')
    end
    it 'assigns and reads the price' do
      @blueray.price = 10
      expect(@blueray.price).to eq(10)
    end
    it 'assigns and reads the run_time' do
      @blueray.run_time = 100
      expect(@blueray.run_time).to eq(100)
    end
    it 'assigns and reads the director' do
      @blueray.director = 'Another Director'
      expect(@blueray.director).to eq('Another Director')
    end
    it 'assigns and reads the producer' do
      @blueray.producer = 'Another Producer'
      expect(@blueray.producer).to eq('Another Producer')
    end
  end
end
