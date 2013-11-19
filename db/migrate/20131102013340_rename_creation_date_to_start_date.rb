class RenameCreationDateToStartDate < ActiveRecord::Migration
  def up
    rename_column :parties, :creation_date, :start_date
  end

  def down
  end
end
