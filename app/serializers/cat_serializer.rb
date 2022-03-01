class CatSerializer < ActiveModel::Serializer
  attributes :name, :breed, :age, :likes
  has_many :cat_toys, serializer: CatstoysSerializer
end
