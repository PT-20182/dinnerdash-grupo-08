class Meal < ApplicationRecord
    belongs_to :category
    has_many :order_meals, dependent: :destroy
    has_many :orders, through: :order_meals
    after_create :has_image


    has_one_attached :image

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true

    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :category_id, presence: true
    validate :correct_image_type

    default_scope { where(available: true) }

    private
      def correct_image_type
          if image.attached? && !image.content_type.in?(%w(image/jpeg image/png image/gif))
              erros.add(:image, 'A imagem precisa ser JPEG,PNG ou GIF')
          elsif image.attached? == false
              image.attach(io: File.open(Rails.root.join('app/assets/images/Make-meals-healthy-interesting.jpg')), filename: 'Make-meals-healthy-interesting.jpg', content_type: 'image/jpg')
          end
      end
    end

    def has_image
      if !self.image.attached?
          self.image.attach(io: File.open(Rails.root.join('app/assets/images/Make-meals-healthy-interesting.jpg')), filename: 'Make-meals-healthy-interesting.jpg', content_type: 'image/jpg')
      end
    end
