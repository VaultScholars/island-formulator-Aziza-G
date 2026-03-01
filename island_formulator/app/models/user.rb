
 class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  has_many :recipes, dependent: :destroy # week3
  has_many :inventory_items, dependent: :destroy # week4 p1
  has_many :batches, dependent: :destroy # week 4 p2

  # Add validations for better error messages
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }, confirmation: true
  validates :password_confirmation, presence: true
 end
