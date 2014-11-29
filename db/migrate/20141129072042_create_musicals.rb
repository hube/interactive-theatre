class CreateMusicals < ActiveRecord::Migration
  def change
    create_table :musicals do |t|
      t.string :title
      t.integer :length
      t.integer :year

      t.timestamps
    end
  end
end
