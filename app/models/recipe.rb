class Recipe < ApplicationRecord
  has_many :ingredients, inverse_of: :recipe
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
end
