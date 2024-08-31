module Validation
  require 'bcrypt'
  puts "The mudule starts with sucess"

  def create_hash_password(password)
    BCrypt::Password.create(password)

  end

  def verify_password(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_users)
    list_users.each do |user_record|
      user_record[:password] = create_hash_password(user_record[:password])
    end
    list_users
  end

  def authenticate_users(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:name] == username && verify_password(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct"
  end
end