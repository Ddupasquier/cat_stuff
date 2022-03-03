class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :age, :likes
  has_many :cat_toys, serializer: CatstoysSerializer
end
