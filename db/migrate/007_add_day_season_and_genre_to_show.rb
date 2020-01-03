class AddDaySeasonAndGenreToShow < ActiveRecord::Migration[5.1]
  def change
    # update_table :shows do |t|
    #   t.string :day
    #   t.string :season
    #   t.string :genre
    # end
    add_column :shows, :day, :string
    add_column :shows, :season, :string
    add_column :shows, :genre, :string
  end
end
