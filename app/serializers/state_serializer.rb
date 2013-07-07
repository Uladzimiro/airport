class StateSerializer < ActiveModel::Serializer
  attributes :id, :plane_id, :name, :created_at
end
