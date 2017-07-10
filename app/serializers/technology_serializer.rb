# frozen_string_literal: true

class TechnologySerializer < ActiveModel::Serializer
  attributes :id, :name, :link, :user, :projects, :editable
  def user
    object.user.id
  end

  def projects
    object.projects.pluck(:id)
  end

  def editable
    scope == object.user
  end
end
