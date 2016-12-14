class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng, :image, :width, :length, :details, :name
  has_one :user
end
