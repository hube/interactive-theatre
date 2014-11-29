class RemoveMusicalFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :musical, :string
  end
end
