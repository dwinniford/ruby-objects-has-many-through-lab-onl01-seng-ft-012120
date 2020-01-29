class Artist 
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
    s = Song.new(name)
    s.genre= genre 
  end 
  
  def songs 
    Song.all.select { |s| s.artist = self }
  end 
  
  def genres 
    songs.map { |s| s.genre }
  end 
  
  
  
end 