class CreateFluxes < ActiveRecord::Migration
  def change
    create_table :fluxes do |t|
      t.integer :score

      t.timestamps
    end
  end
end
