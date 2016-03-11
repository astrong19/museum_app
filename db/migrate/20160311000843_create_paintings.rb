class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :image
      t.string :year
      t.string :style
      t.integer :artist_id
      t.integer :museum_id

      t.timestamps null: false
    end
  end
end
