if Salon.count == 0
  20.times do |i|
    Salon.create!({
      name: "salon #{i}",
      desc: "description for salon #{i}",
      address: "address for salon #{i}",
      phone_number: "12312412312"
    })
  end
end
