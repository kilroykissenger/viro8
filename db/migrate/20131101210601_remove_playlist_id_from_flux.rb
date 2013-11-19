class RemovePlaylistIdFromFlux < ActiveRecord::Migration
  def up
    remove_column :fluxes, :playlist_id
  end

  def down
    add_column :fluxes, :playlist_id, :integer
  end
end
