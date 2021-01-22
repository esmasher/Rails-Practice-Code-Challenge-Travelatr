class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinattions, through: :posts
    validates :name, uniqueness: true
    validates :bio, length: { minimum: 30 }
    validates :age, numericality: { greater_than: 0 }
end
