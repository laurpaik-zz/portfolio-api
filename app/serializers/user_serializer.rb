# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :posts

  def posts
    object.posts.pluck(:id)
  end
end
