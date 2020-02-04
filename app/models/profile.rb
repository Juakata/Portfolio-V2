class Profile < ApplicationRecord
  validates :photo, presence: true
  validates :intro, presence: true
  mount_uploader :photo, PictureUploader
  belongs_to :user
  validate  :photo_size
end
