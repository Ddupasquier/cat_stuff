class OwnerscatsSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :city, :state, :image
end
