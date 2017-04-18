class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, inverse_of: :recipe, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, length: { minimum: 3}
  validates :summary, length: { minimum: 10}
  validates :description , presence: true
end
