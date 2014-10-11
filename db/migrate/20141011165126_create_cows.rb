class CreateCows < ActiveRecord::Migration
  def change
    create_table :cows do |t|
      t.decimal :chuck_reserved, precision: 8, scale: 2
      t.decimal :chuck_total, precision: 8, scale: 2
      t.decimal :rib_reserved, precision: 8, scale: 2
      t.decimal :rib_total, precision: 8, scale: 2
      t.decimal :brisket_reserved, precision: 8, scale: 2
      t.decimal :brisket_total, precision: 8, scale: 2
      t.decimal :shank_reserved, precision: 8, scale: 2
      t.decimal :shank_total, precision: 8, scale: 2
      t.decimal :plate_reserved, precision: 8, scale: 2
      t.decimal :plate_total, precision: 8, scale: 2
      t.decimal :short_loin_reserved, precision: 8, scale: 2
      t.decimal :short_loin_total, precision: 8, scale: 2
      t.decimal :sirloin_reserved, precision: 8, scale: 2
      t.decimal :sirloin_total, precision: 8, scale: 2
      t.decimal :top_sirloin_reserved, precision: 8, scale: 2
      t.decimal :top_sirloin_total, precision: 8, scale: 2
      t.decimal :bottom_sirloin_reserved, precision: 8, scale: 2
      t.decimal :bottom_sirloin_total, precision: 8, scale: 2
      t.decimal :tenderloin_reserved, precision: 8, scale: 2
      t.decimal :tenderloin_total, precision: 8, scale: 2
      t.decimal :round_reserved, precision: 8, scale: 2
      t.decimal :round_total, precision: 8, scale: 2
      t.decimal :flank_reserved, precision: 8, scale: 2
      t.decimal :flank_total, precision: 8, scale: 2
      t.decimal :tongue_reserved, precision: 8, scale: 2
      t.decimal :tongue_total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
