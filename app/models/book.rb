class Book < ApplicationRecord
    validates :title, :author, :score, :description, presence: true
    validates :title, :author, :description, length: { minimum: 3 }
    validates :title, :author, length: { maximum: 50 }
    validates :description, length: { maximum: 255 }
    validates :score, numericality: true
end
