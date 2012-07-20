class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.text :url
      t.text :note

      t.timestamps
    end
  end
end
