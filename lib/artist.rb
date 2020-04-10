class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def self.all
    @@all 
  end 
  
  def self.destroy_all
    self.all.clear
  end
  
  def save 
    @@all << self
  end
  
  def self.create(name)
    artist = Artist.new(name) 
    artist.save
    artist
  end
  
  def add_song(name)
    Song.new(name, self)
  end
  
  def songs
    @songs
  end
  
  
end