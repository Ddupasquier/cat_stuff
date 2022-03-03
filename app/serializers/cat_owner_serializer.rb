class CatOwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :city, :state, :image
  has_many :cats
end
