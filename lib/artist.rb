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

  
  def genres 
    new_array = []
    @songs.each do |song|
      if @new_array.include?(song.genre)
        nil 
      else 
        new_array << song.genre 
      end 
    end
    @new_array
  end
  
  def songs
    @songs
  end
  
  
end