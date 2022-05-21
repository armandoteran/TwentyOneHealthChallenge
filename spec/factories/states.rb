FactoryBot.define do
  factory :state do
    full_name { "MyString" }
    abbreviation { "MyString" }
    service_offered { false }
    minimum_age { 1 }
  end
end
