class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.text :lyrics
      t.integer :length
      t.string :musical

      t.timestamps
    end
  end
end
