require_relative "../app"
require 'bundler'
Bundler.require

class User
  attr_accessor :email
  attr_accessor :age
  @@all_user = Array.new

  def initialize(user_email, user_age)
    @email = user_email
    @age = user_age
    @@all_user << self
  end

  def self.all
    return @@all_user
  end

  def self.find_by_email(user_email)
    @@all_user.each do |i|
      if i.user_email == email
        return User.email
      end
    end
  end
end
