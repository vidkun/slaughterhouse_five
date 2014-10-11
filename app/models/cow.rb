class Cow < ActiveRecord::Base
  validates :chuck_total,
            :rib_total,
            :brisket_total,
            :shank_total,
            :plate_total,
            :short_loin_total,
            :sirloin_total,
            :top_sirloin_total,
            :bottom_sirloin_total,
            :tenderloin_total,
            :round_total,
            :flank_total,
            :tongue_total,
            :total_weight, presence: true,
                           numericality: true
  validates :tag_number, presence: true,
                         uniqueness: { case_sensitive: false }
end
