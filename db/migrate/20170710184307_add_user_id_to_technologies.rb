# frozen_string_literal: true

class AddUserIdToTechnologies < ActiveRecord::Migration[5.0]
  def change
    add_reference :technologies, :user, index: true, foreign_key: true, null: false
  end
end
