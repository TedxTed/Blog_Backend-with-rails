class Article < ApplicationRecord
  validates :title, presence:true
  scope :not_deleted_yet, ->{where(deleted_at:nil)}
end
