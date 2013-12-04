class RemovePartyIdFromFlux < ActiveRecord::Migration
  def up
    remove_column :fluxes, :party_id
  end
end
