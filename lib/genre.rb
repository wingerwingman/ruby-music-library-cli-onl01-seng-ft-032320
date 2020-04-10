class Genre 
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
    genre = Genre.new(name) 
    genre.save
    genre
  end
  
  def add_song(song)
    if song.artist == nil 
      song.artist = self 
    else 
      nil 
    end
    if @songs.include?(song)
      nil
    else 
      @songs << song 
    end 
    song
  end
  
  def songs
    @songs
  end 
  
end