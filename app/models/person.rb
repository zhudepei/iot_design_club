class Person < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :gender, presence: true
  validates :interest, presence: true
  validates :period, presence: true
  mount_uploader :avatar, AvatarUploader
  default_scope { order(period: 'DESC') }
end
