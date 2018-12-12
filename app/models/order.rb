class Order < ApplicationRecord
    belongs_to :user
    belongs_to :situation
    has_many :order_meals
    has_many :meals, through: :order_meals
    before_create :set_situation

    validates :user , presence: true


    private

    def set_situation
        self.situation_id = 1
    end


  end
