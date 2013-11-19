class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :song_artist
      t.string :song_album
      t.time :song_duration
      t.string :song_location

      t.timestamps
    end
  end
end
