# frozen_string_literal: true

# Model for user by devise
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :username, presence: true
  validates :username, uniqueness: true

  has_many :posts, foreign_key: :created_by_id, dependent: :destroy
end
