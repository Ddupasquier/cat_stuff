class CatToySerializer < ActiveModel::Serializer
  attributes :toy_name, :likes, :cat_id
  # belongs_to :cat
end
