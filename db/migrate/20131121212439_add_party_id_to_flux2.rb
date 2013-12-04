class AddPartyIdToFlux2 < ActiveRecord::Migration
  def change
    add_column :fluxes, :party_id, :integer
  end
end
