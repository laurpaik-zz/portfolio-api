# frozen_string_literal: true

class Tool < ApplicationRecord
  belongs_to :project
  belongs_to :technology

  validates :project, presence: true
  validates :technology, presence: true
end
