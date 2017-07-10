# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :link, null: false
      t.string :front_end, null: false
      t.string :back_end, null: false
      t.text :description, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
