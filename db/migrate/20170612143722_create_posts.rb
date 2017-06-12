# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.date :date_posted, null: false

      t.timestamps
    end
  end
end
