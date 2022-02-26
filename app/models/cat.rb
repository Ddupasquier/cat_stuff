class Cat < ApplicationRecord
  belongs_to :cat_owner
  has_many :cat_toys, dependent: :destroy

  validates :name, length: { minimum: 2 }
  validates :name, length: { maximum: 50 }
end
