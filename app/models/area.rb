class Area < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :projects, dependent: :delete_all
end
