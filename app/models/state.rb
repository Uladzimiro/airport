class State < ActiveRecord::Base
  belongs_to :plane

  attr_accessible :name, :plane_id

  scope :current, -> { where(id: select('plane_id, max(id) as current_id').group(:plane_id).map(&:current_id)) }

  validates :name, inclusion: Plane::STATES
end
