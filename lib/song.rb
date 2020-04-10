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
  
  def create
    save << self.new
  end
  
  
end