class Profile < ApplicationRecord
  mount_uploader :photo, PictureUploader
  belongs_to :user
end
