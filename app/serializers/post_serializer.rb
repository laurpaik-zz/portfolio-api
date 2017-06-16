# frozen_string_literal: true

class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :date_posted, :user, :editable

  def user
    object.user.id
  end

  def editable
    scope == object.user
  end
end
