class PlaneType < ActiveRecord::Base
  has_many :planes

  attr_accessible :manufacturer, :name, :picture

  has_attached_file :picture, styles: { airfield: "80x80>", description: '150x150>', :thumb => "100x100>" }

  def picture_airfield
    picture.url(:airfield)
  end

  def picture_description
    picture.url(:description)
  end
end
