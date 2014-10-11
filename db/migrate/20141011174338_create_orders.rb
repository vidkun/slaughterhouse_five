class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :cut
      t.decimal :amount
      t.belongs_to :user, index: true
      t.belongs_to :cow, index: true

      t.timestamps
    end
  end
end
