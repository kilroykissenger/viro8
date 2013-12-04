class AddDefault0ToScore < ActiveRecord::Migration
  def change
    change_column :songs, :score, :integer, :default => 0
  end
end
