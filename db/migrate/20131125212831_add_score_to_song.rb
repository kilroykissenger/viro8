class AddScoreToSong < ActiveRecord::Migration
  def change
    add_column :songs, :score, :integer
  end
end
