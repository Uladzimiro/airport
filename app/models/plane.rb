class Plane < ActiveRecord::Base
  belongs_to :plane_type

  attr_accessible :plane_type_id, :serial
end
