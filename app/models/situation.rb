class Situation < ApplicationRecord
    has_many :orders, inverse_of: :situation
end
