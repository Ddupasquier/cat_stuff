class CatOwnerSerializer < ActiveModel::Serializer
  attributes :name, :age, :city, :state, :image
  has_many :cats
end
