class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true
  has_many :comments
end
