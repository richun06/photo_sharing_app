class Picture < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 100 }
  mount_uploader :image, ImageUploader
  has_many :favorites
end
