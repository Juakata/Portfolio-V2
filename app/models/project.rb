class Project < ApplicationRecord
  validates :image, presence: true
  validates :description, presence: true
  validates :github, presence: true
  mount_uploader :image, PictureUploader
  belongs_to :area
  validate  :image_size

  private

  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "should be less than 5MB")
    end
  end
end
