# 1.times do
#     User.create({
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         email: Faker::Internet.email,
#         password: Faker::Internet.username,  
#         address_line_1: Faker::Address.street_address,
#         state: Faker::Address.state,
#         city: Faker::Address.city,
#         postal_code: Faker::Address.postcode,
#         country: Faker::Address.country,
#         website: Faker::Internet.url,
#         company: Faker::Company.name 
#     })      
# end

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

30.times do 
    customers = Customer.all
    len = customers.length
    customer = customers[rand(0...len)]
    customerName = customer.first_name + " " + customer.last_name
    description = "This is invoice to " + customer.first_name + " " + customer.last_name
    dueArray = ["Due on Receipt", "Due in 10 days", "Due in 30 days", "Due in 60 days"]
    dueLen = dueArray.length
    due = dueArray[rand(0...dueLen)]
    entriesItemsMax = 12
    entries = []
    allTotal = 0
    rand(1...entriesItemsMax).times do
        quantity = Faker::Number.between(from: 1, to: 50)
        rate = Faker::Number.between(from: 50, to: 1000)
        total = quantity * rate
        allTotal = allTotal + total
        entries.push({
            description: "Invoice Item",
            quantity: quantity,
            rate: rate,
            total: total 
        })
    end
    
    Invoice.create({
      description: description,  
      to: customerName,
      due: due,
      date: Faker::Date.between(from: 363.days.ago, to: Date.today),
      entries: entries,
      total: allTotal,
      user_id: '1'
    })
end

