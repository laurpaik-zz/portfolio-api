# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user
  has_many :technologies, through: :tools
  has_many :tools

  validates :title, presence: true
  validates :link, presence: true
  validates :front_end, presence: true
  validates :back_end, presence: true
  validates :description, presence: true
  validates :image, presence: true
end
