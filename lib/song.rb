class Song 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all 
  end 
  
  def destroy_all
    self.all.clear
  end
  
  
end