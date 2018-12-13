class OrderMeal < ApplicationRecord
    belongs_to :order
    belongs_to :meal

    validates :quantity, presence: true , numericality: { only_integer: true, greater_than: 0}

    validate :meal_present
    validate :order_present

    private
    def meal_present
        if meal.nil?
            errors.add(:product, "Produto não é valido ;-;")
        end
    end

    def order_present
        if order.nil?
            errors.add(:order, "Não é pedido válido ;-;")
        end
    end
end
