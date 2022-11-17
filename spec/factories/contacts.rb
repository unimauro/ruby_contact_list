FactoryBot.define do
  factory :contact do
    name { "MyString" }
    date_of_birth { "2022-11-17 00:08:39" }
    telephone { 1 }
    address { "MyString" }
    credit_card_number { 1 }
    email { "MyString" }
    import_status { nil }
    user { nil }
    credit_card_network { nil }
  end
end
