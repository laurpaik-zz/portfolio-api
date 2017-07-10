# frozen_string_literal: true

class AddUserIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :user, index: true, foreign_key: true, null: false
  end
end
