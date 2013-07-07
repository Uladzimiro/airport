class Plane < ActiveRecord::Base
  belongs_to :plane_type
  has_many :states

  STATES = %w(airfield ready start takeoff)
  delegate :airfield?, :ready?, :start?, :takeoff?, to: :current_state

  after_create { states.create name: 'airfield' }

  attr_accessible :plane_type_id, :serial

  scope :with_state, ->(state) { joins(:states).where(states: {id: State.current, name: state}) }

  def current_state
    states.last.name.inquiry
  end

  def ready
    states.create! name: 'ready' if airfield?
  end

  def start
    states.create! name: 'start' if ready?
  end

  def takeoff
    states.create! name: 'takeoff' if start?
  end

  def abort
    states.create! name: 'airfield' if ready?
  end




end
