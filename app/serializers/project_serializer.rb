# frozen_string_literal: true

class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :link, :front_end, :back_end, :description, :image,
             :user, :technologies, :editable

  def user
    object.user.id
  end

  def technologies
    object.technologies.pluck(:id)
  end

  def editable
    scope == object.user
  end
end
