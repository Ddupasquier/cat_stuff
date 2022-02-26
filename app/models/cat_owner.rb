class CatOwner < ApplicationRecord
    has_many :cats, dependent: :destroy

    validates :name, length: { minimum: 2 }
    validates :name, length: { maximum: 50 }
    # validates :name, uniqueness: true
end
