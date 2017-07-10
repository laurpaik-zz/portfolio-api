# frozen_string_literal: true

class ToolSerializer < ActiveModel::Serializer
  attributes :id
  has_one :project
  has_one :technology

  def projects
    object.project.id
  end
end
