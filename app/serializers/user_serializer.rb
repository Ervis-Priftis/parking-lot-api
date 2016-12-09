class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :space_ids
end
