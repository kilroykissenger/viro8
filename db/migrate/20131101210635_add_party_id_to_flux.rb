class AddPartyIdToFlux < ActiveRecord::Migration
  def change
    add_column :fluxes, :party_id, :integer
  end
end
