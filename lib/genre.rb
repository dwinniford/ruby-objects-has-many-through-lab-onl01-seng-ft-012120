require 'pry'

class Genre 
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Songs.all.select { |s| 
    s.genre == self 
    binding.pry }
  end 
  
  def artists
    songs.map { |s| s.artist }
  end 
  
end 