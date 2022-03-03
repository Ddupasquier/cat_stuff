class OwnerscatsSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :city, :state, :image
  # has_many :cats, serializer: CatSummarySerializer
end
