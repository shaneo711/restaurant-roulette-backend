class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone
end
