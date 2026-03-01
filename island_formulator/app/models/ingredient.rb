class Ingredient < ApplicationRecord
  belongs_to :user

  has_many :ingredient_tags, dependent: :destroy
  has_many :tags, through: :ingredient_tags
  has_many :inventory_items, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
  has_one_attached :photo
end
