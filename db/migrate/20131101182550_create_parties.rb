class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.datetime :creation_date
      t.datetime :end_date
      t.string :url

      t.timestamps
    end
  end
end
