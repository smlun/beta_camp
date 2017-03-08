class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader

  belongs_to :section

  validates :link, presence: true
  validates :description, presence: true
end
