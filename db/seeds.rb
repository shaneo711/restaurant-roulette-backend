5.times do
  Restaurant.create({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.cell_phone
  })
end
