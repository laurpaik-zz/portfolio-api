# frozen_string_literal: true

class Technology < ApplicationRecord
  belongs_to :user
  has_many :projects, through: :tools
  has_many :tools

  validates :name, presence: true
end
