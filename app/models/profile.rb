class Profile < ApplicationRecord
  validates :photo, presence: true
  validates :intro, presence: true
  mount_uploader :photo, PictureUploader
  belongs_to :user
  validate  :photo_size

  private

  def photo_size
    if photo.size > 5.megabytes
      errors.add(:photo, "should be less than 5MB")
    end
  end
end
