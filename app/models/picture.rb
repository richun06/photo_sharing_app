class Picture < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 100 }
  mount_uploader :image, ImageUploader
end
