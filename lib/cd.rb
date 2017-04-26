require_relative 'item.rb'

class Cd < Item
  attr_accessor :tracks, :artist, :run_time
  def initialize(name, price, tracks, artist, run_time)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
    super(name, price, quantity, description)
  end
end
