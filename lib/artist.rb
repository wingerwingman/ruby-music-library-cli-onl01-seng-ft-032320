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
    if song[artist].empty?
      artist = Artist.new(name) 
    end
    artist
  end
  
  def add_song(song)
      @songs << song 
      song.artist = self
    
  end
  
  def songs
    @songs
  end
  
  
end