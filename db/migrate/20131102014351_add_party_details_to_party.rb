class AddPartyDetailsToParty < ActiveRecord::Migration
  def change
    add_column :parties, :party_name, :string
    add_column :parties, :party_location, :string
    add_column :parties, :party_type, :string
    add_column :parties, :party_details, :text
  end
end
