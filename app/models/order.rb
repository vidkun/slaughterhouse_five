class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :cow

  validates :cut, :amount, presence: true
  validates :amount, numericality: true
  validate :amount_left

  accepts_nested_attributes_for :user

  private

  def amount_left
    cow = self.cow
    remaining = cow.send("#{cut}_total".to_sym) - cow.send("#{cut}_reserved".to_sym)
    errors.add(:amount, 'not enough of this cut remaining') if amount > remaining
  end
end
