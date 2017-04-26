require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd  = Cd.new('Test Name', 15.00, 7, 'Test Artist', 60)
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Test Name')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(7)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Test Artist')
    end

    it 'is assigned an run_time' do
      expect(@cd.run_time).to eq(60)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Another Name'
      expect(@cd.name).to eq('Another Name')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 5
      expect(@cd.tracks).to eq(5)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Another Artist'
      expect(@cd.artist).to eq('Another Artist')
    end

    it 'assigns and reads the run_time' do
      @cd.run_time = 40
      expect(@cd.run_time).to eq(40)
    end
  end
end
# * Tracks (number of)
# * Artist
# * Run time
