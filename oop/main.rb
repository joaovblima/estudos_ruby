require_relative 'validation'

users = [
  {username: "Joao Lima", password: "password1"},
  {username: "Ana Leticia", password: "password2"},
  {username: "Andre Matheus", password: "password3"},
  {username: "Ingrid Melo", password: "password4"},
  {username: "Lidiane Cristina", password: "password5"}
]

hashed_users = Validation.create_secure_users(users)
puts hashed_users