class Song 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    
  end
  
  def self.all
    @@all 
  end 
  
  def destroy_all
    self.all.clear
  end
  
  def save 
    @@all << self
  end
  
  
end