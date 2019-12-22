class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    full_name = "#{self.first_name} #{self.last_name}" 
  end 
  
  def list_roles 
    list = []
    self.characters.each do |char|
      character = char.name 
      show = char.show.name  
      list << "#{character} - #{show}"
    end
    list 
  end 
end