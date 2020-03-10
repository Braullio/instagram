# frozen_string_literal: true

# vinculation post to user
class AddCreatedByIdColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :created_by, null: false, foreign_key: { to_table: :users }
  end
end
