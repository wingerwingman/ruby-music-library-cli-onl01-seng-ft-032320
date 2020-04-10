class Artist
  attr_accessor :name, :has_and_belongs_to_many
  @@all = []
  
  def initialize(name, song)
    @name = name 
    @song = []
    
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
  
  
end