class Post < ApplicationRecord
  mount_uploader :ImageUploader

  belongs_to :user
  validates :image, presence: true
end
