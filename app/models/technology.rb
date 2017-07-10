# frozen_string_literal: true

class Technology < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  # validates :link, presence: true
end
