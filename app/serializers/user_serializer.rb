class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :spaces, :image
end
