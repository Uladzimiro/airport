class PlaneSerializer < ActiveModel::Serializer
  attributes :id, :plane_type_id, :serial, :current_state
end
