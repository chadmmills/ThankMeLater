FactoryGirl.define do
  factory :contact do
    sequence(:name) { |n| "Doe Family #{n}" }
    address_1 "123 Acme St"
    address_2 ""
    city "Paradise City"
    state "CA"
    zipcode "90210"
  end
end
