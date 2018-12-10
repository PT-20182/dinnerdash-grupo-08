class Category < ApplicationRecord
    has_many :meals , inverse_of: :category
    validates :name ,  presence: true

end
