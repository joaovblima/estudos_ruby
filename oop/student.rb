require_relative 'validation'

class Student
  include Validation
  attr_accessor :first_name, :last_name, :email, :username, :password

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, Username: #{@username}, Password:  #{@password}"
  end


  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
    
  end

  joao = Student.new("Joao", "Lima", "joaolima@exemplo.com", "novenove", "minhasenha123")
  p joao
  puts
  hashed_password = joao.create_hash_password(joao.password)
  p hashed_password
  



end
