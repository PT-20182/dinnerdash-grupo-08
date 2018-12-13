class Order < ApplicationRecord
    belongs_to :user
    belongs_to :situation
    has_many :order_meals
    has_many :meals, through: :order_meals
    #before_save :set_situation
    #before_save :set_user
    #before_save :subtotal

    validates :user , presence: true

    def subtotal
        sum = 0
        session[:cart].each do |item|
              sum += Meal.find(item["id"]).price * item["qtd"].to_i
        end
        self.price = sum
    end


    private

    def set_situation
        self.situation_id = 1
    end

    def set_user
        self.user_id = current_user.id
    end

  end
