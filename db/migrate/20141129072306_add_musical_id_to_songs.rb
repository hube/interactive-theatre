class AddMusicalIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :musical_id, :integer
  end
end
