class Post < ApplicationRecord
  belongs_to :section

  validates :link, presence: true
  validates :description, presence: true
end
