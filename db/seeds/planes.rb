plane_types = PlaneType.all

16.times do
  FactoryGirl.create(:plane, plane_type: plane_types.sample)
end
