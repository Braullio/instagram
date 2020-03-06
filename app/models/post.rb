# frozen_string_literal: true

# Model to posts
class Post < ApplicationRecord
  validates :description, presence: true

  belongs_to :created_at, class_name: 'User'
end
