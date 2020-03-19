# frozen_string_literal: true

# Likes in posts
class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :post_id, uniqueness: { scope: :user_id,
                                    message: 'Post já está curtido' }
end
