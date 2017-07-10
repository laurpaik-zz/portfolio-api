# frozen_string_literal: true

class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.references :project, foreign_key: true, null: false, index: true
      t.references :technology, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
