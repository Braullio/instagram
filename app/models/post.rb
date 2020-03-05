# frozen_string_literal: true

# Model to posts
class Post < ApplicationRecord
  validates :description, presence: true
end
