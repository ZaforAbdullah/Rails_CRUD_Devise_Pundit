User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: 'admin'
)

User.create!(
  email: 'user1@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: 'user'
)

User.create!(
  email: 'user2@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: 'user'
)