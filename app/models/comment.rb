class Comment < ApplicationRecord
  validates :name, presence: true
  validates :body, presence: true
  belongs_to :user
end
