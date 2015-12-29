desc "Seed the development db with faker data"
task :seed_faker_db => :environment do
  100.times do |i|
    Contact.create!(
      name: Faker::Name.name,
      address_1: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state_abbr,
      zipcode: Faker::Address.zip,
    )
  end
end
