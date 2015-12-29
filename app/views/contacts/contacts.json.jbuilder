json.contacts(contacts) do |contact|
  json.extract! contact, :id, :name, :address_1, :address_2, :city, :state, :zipcode
  json.full_address contact.full_address
end
