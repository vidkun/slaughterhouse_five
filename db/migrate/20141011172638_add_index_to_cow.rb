class AddIndexToCow < ActiveRecord::Migration
  def change
    add_index :cows, :tag_number, :string, unique: true
  end
end
