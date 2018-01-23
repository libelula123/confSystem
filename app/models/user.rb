class User < ApplicationRecord
  has_secure_password

  # attr_accessor :email, :password, :password_confirmation
  # before_create :blabla
  #
  # def blabla
  #   binding.pry
  # end


  validates_uniqueness_of :email
end
