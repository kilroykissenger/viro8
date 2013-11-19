class AddDefaultValueToScore < ActiveRecord::Migration
  def change
    change_column :fluxes, :score, :integer, :default => 0
  end
end
