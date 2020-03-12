# frozen_string_literal: true

# Controller for like and dislike posts
class LikesController < ApplicationController
  def create
    like = current_user.likes.build(like_params)

    if like.save
      render json: { successful: true, id: like.id }
    else
      render json: { successful: false }
    end
  end

  private

  def like_params
    params.require(:likes).permit(:post_id)
  end
end
