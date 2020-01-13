class User < ApplicationRecord
  attr_accessor :remember_token
  validates :name, presence: true
  validates :password, presence: true
  has_many :comments
  has_many :areas

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def update_remember_digest
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(token)
    BCrypt::Password.new(remember_digest).is_password?(token)
  end
end
