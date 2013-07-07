# Read about factories at https://github.com/thoughtbot/factory_girl

include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :plane_type do
    manufacturer { Faker::Company.name }
    name { Faker::Company.name }
    sequence(:picture) { |n| fixture_file_upload(Rails.root.join(*%w(app assets images planes) << "plane_#{(n-1)%8 + 1}.png"), 'image/png') }
  end
end
