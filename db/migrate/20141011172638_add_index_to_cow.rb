class AddIndexToCow < ActiveRecord::Migration
  def change
    add_index :cows, :tag_number, unique: true
  end
end
