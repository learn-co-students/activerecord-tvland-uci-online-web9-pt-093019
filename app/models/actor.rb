class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return_object = Actor.find(self.id)
    return_object.first_name + " " + return_object.last_name
  end

  def list_roles
    self.characters.collect do |role|
      list_return = "#{role.name} - #{role.show.name}"
    end
  end
end
