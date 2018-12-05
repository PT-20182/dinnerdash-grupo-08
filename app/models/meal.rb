class Meal < ApplicationRecord
    has_one_attached :image

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :available, presence: true

    validate :correct_image_type

    private
    def correct_image_type
        if image.attached? && !image.content_type.in?(%w(image/jpeg image/png image/gif))
            erros.add(:image, 'A imagem precisa ser JPEG,PNG ou GIF')
        elsif image.attached? == false
            image.attach(io: File.open(Rails.root.join('app/assets/images/Make-meals-healthy-interesting.jpg')), filename: 'Make-meals-healthy-interesting.jpg', content_type: 'image/jpg')
        end
    end
end
