class CatOwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :city, :state, :image, :user_id
  has_many :cats
end
