class AddIdentifierToParty < ActiveRecord::Migration
  def change
    add_column :parties, :identifier, :integer
  end
end
