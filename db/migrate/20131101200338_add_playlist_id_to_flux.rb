class AddPlaylistIdToFlux < ActiveRecord::Migration
  def change
    add_column :fluxes, :playlist_id, :integer
  end
end
