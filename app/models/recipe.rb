class Recipe < ApplicationRecord
  default_scope { order("created_at desc") }
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :ingredients, inverse_of: :recipe, dependent: :destroy
  belongs_to :category
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, length: { minimum: 3}
  validates :summary, length: { minimum: 10}
  validates_presence_of :description ,:category_id
  after_initialize :set_defaults

  def set_defaults
    self.image ||="http://lorempixel.com/1200/800/food/"
  end

   scope :traditional, ->{where(category_id: 1)}
   scope :meat, -> {where(category_id: 2)}
   scope :fish, -> {where(category_id: 3)}
   scope :pastry, -> {where(category_id: 7)}
end
