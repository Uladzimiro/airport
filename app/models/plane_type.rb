class PlaneType < ActiveRecord::Base
  has_many :planes

  attr_accessible :manufacturer, :name, :picture

  has_attached_file :picture, styles: { :medium => "256x256>", :thumb => "100x100>" }
end
