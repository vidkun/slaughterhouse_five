class AddColumnsToCow < ActiveRecord::Migration
  def change
    add_column :cows, :total_weight, :decimal, precision: 8, scale: 2
    add_column :cows, :tag_number, :string
  end
end
