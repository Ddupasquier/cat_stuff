class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
  has_many :cat_owners
end
