# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :technologies
  has_many :posts
  has_many :projects
  has_many :tools, through: :projects
end
