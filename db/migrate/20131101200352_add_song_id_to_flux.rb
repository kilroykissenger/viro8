class AddSongIdToFlux < ActiveRecord::Migration
  def change
    add_column :fluxes, :song_id, :integer
  end
end
