class Slide < ApplicationRecord
  validates :picture, presence: true
  mount_uploader :picture, SlidePictureUploader
end
