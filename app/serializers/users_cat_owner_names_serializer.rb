class UsersCatOwnerNamesSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :cat_owners
end
