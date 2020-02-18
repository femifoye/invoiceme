1.times do
    User.create({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: Faker::Internet.username,  
        address_line_1: Faker::Address.street_address,
        state: Faker::Address.state,
        city: Faker::Address.city,
        postal_code: Faker::Address.postcode,
        country: Faker::Address.country,
        website: Faker::Internet.url,
        company: Faker::Company.name 
    })      
end

15.times do
    Customer.create({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        website: Faker::Internet.url,
        address_line_1: Faker::Address.street_address,
        postal_code: Faker::Address.postcode,
        state: Faker::Address.state,
        city: Faker::Address.city,
        country: Faker::Address.country,
        currency: Faker::Currency.name,
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
        user_id: "1"
    })
end

