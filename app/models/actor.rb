class Actor < ActiveRecord::Base
  #an actor has many characters and many shows through characters
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        self.first_name + " " + self.last_name
    end
    
    def list_roles
     self.characters.map do |char|
        "#{char.name} - #{char.show.name}"
     end 
    end 
end