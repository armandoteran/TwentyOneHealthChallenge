FactoryBot.define do
  factory :product do
    name { "MyString" }
    category { "MyString" }
    ndc { "2022-05-22" }
    qty { 1 }
    price { 1 }
    instructions { "MyString" }
  end
end
