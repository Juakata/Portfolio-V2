class Network < ApplicationRecord
  validates :github, presence: true
  validates :linkedin, presence: true
  validates :gmail, presence: true
  validates :twitter, presence: true
  validates :instagram, presence: true
  belongs_to :user
end
