class User < ActiveRecord::Base
  has_many :orders
  
  validates :name, :email, :phone, :address, presence: true
  validates :email, uniqueness: true

  enum user_type: [:personal, :restaurant]
end
