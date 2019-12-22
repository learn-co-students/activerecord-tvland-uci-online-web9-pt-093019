class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network 
  
  def actors_list 
    list = []
    Actor.all.each do |actor|
      list << actor.full_name if actor.shows.include?(self) 
    end 
    list 
  end 
end