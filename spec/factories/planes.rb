# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plane do
    plane_type_id 1
    serial { Faker::PhoneNumber.short_phone_number }
  end
end
