if User.count == 0
  User.create!({
    email: 'admin@gmail.com',
    password: '123456',
    role: 1
  })
end
