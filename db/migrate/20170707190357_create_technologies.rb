# frozen_string_literal: true

class CreateTechnologies < ActiveRecord::Migration[5.0]
  def change
    create_table :technologies do |t|
      t.string :name, null: false
      t.string :link

      t.timestamps
    end
  end
end
