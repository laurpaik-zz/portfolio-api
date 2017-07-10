# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :posts, :projects

  def posts
    object.posts.pluck(:id)
  end

  def projects
    object.projects.pluck(:id)
  end
end
