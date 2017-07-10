# frozen_string_literal: true

class TechnologySerializer < ActiveModel::Serializer
  attributes :id, :name, :link, :user, :editable
  def user
    object.user.id
  end

  def editable
    scope == object.user
  end
end
