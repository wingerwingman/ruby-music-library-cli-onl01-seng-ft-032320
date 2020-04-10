class Song 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    
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
  
  def self.create
    song = Song.new 
    song.save
    song
  end
  
  
end