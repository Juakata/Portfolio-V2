class Project < ApplicationRecord
  validates :image, presence: true
  validates :description, presence: true
  validates :github, presence: true
  mount_uploader :image, PictureUploader
  belongs_to :area
end
