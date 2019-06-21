require 'bcrypt'

class User < ActiveRecord::Base
  validates_presence_of :user_name, :email, :password
  validates_uniqueness_of :user_name, :email

  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate?(input_password)
    self.password == input_password
  end
end
