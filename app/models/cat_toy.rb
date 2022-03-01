class CatToy < ApplicationRecord
  belongs_to :cat

  validates :toy_name, presence: true
  validates :toy_name, length: { minimum: 2 }
  validates :toy_name, length: { maximum: 50 }
end
