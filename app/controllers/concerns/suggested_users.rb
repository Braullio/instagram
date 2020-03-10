# frozen_string_literal: true

# modulo de pegar sugestores
module SuggestedUsers
  extend ActiveSupport::Concern

  private

  def set_suggested_users
    @suggested_users = User.where('true') - [current_user]
  end
end
