plane_types = PlaneType.all

10.times do
  FactoryGirl.create(:plane, plane_type: plane_types.sample)
end
