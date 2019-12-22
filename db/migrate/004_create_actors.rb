class CreateActors < ActiveRecord::Migration[5.1]
  def change 
    create_table :actors do |col|
      col.string :first_name
      col.string :last_name 
    end 
  end 
end 