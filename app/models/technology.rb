# frozen_string_literal: true

class Technology < ApplicationRecord
  validates :name, presence: true
  validates :link, presence: true
end
