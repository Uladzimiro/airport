class PlaneTypeSerializer < ActiveModel::Serializer
  attributes :id, :manufacturer, :name, :picture_airfield, :picture_description
end
