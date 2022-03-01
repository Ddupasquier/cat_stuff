class CatOwner < ApplicationRecord
    has_many :cats, dependent: :destroy
    validates :name, :age, :city, :state, :image, presence: true
    validates :name, length: { minimum: 2 }
    validates :name, length: { maximum: 50 }
    # validates :age, presence: true
    # validates :city, presence: true
    # validates :state, presence: true
    # validates :image, presence: true
end
