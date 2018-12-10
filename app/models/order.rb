class Order < ApplicationRecord
  belongs_to :user, inverse_of: :order
  belongs_to :situation, inverse_of: :order
  has_many :order_meals, inverse_of: :order

  validates :user , presence: true

end
