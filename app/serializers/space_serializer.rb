class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng, :image, :width, :length, :details
  has_one :user
end
