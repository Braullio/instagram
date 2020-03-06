# frozen_string_literal: true

# Model for user by devise
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
