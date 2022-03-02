class OwnerscatsSerializer < ActiveModel::Serializer
  attributes :name, :age, :city, :state, :image
  # has_many :cats, serializer: CatSummarySerializer
end
