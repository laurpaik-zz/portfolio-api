# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  validates :date_posted, presence: true
end
